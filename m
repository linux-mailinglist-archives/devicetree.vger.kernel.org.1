Return-Path: <devicetree+bounces-271492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDQUEqxbqWkL6AAAu9opvQ
	(envelope-from <devicetree+bounces-271492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:32:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D23420FBC7
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:32:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4378330191A8
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D223437F724;
	Thu,  5 Mar 2026 10:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QHpltJiX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gSuLg71Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122C3378D9E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706462; cv=none; b=Gng4gbscDWeuk7/rAIrMVMUmn2R4JdIo5zoPSDD+9HI6EKQeqJW/T+mesUhRCOz6mJg1ScDUIXsVoogo5f78tnHrITm0v3GLbsEFQc2XIFAYYYMWBSADe8maAHecW/layc50peCFroGJSTvSX/jKEwtu1SvGJKoJIuRxmwGUpcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706462; c=relaxed/simple;
	bh=2x0xS5v7QMwKqfvoZGoKP4l+MAUtUz8DKcmHOyIvys8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EzHnvdr/fFYAu65panXUpu0gXL1iDTA5TQndC75vjWQ+B4tYqbH8tRD39orh/G4EIeRo17Lk6WmcE90yKPnJFY4PJtCaFZkiLI/vwO0NMMCMixhfzRP5xUhnIQG29J2O8Etb3O1giTSAjs3iyibd8lErkj5MKs8plIR2xxfWBbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QHpltJiX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gSuLg71Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFhvm1783458
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 10:27:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yETX3xMSflW1MuSQkbZrTWM0HWCGcnLuE8iEF4qfEkg=; b=QHpltJiX+mF6grjZ
	JTehpY/Wr5A9MbEf9+t+WLpNfT3N/ynSbxGwNfEwRhk0oWQ1W8OPRx25PZRHAv86
	nWU1Nlle5d26b2FxL6XDo0z2Lp98JnMccCHfhVSoC/5OJhHSGbyclCt3W1buIpUm
	UMQ8UQZq6f5v5Tzv/n+Sr9ueq9il0PmCzmTIUYIee/A/FwNBxxylUhH04I9nBreZ
	LYpU0jUfwxSSIFy/n+7tNtPelISD9kLk+1ZQLfvZTeY/KFsxFipBVMiOIrdSSGr2
	n4K0pEYUShnXqzTALeFz/aK6FVo5nVrHv0uR8hgrKcqzpXp5Fgvag1VGe98PbtlG
	gyPtsg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq1pk1buu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:27:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899f6011df3so22973706d6.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772706459; x=1773311259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yETX3xMSflW1MuSQkbZrTWM0HWCGcnLuE8iEF4qfEkg=;
        b=gSuLg71Z3A/ADra0Vg2MLuHdwjinUix5IncxtIIPZdI5/w241eMOvNgYQHSZOd06jz
         yQL2tI3CbBNmfD0eMPP75SR+XCuDAViEykp3POUCzTqhQbv3IHwdHYnw8F8x02rl9HqI
         hp5Hrs8blRY6I2h0jytmlyIdHz5Egi8u8076p3sD9wc5FgCinWN/M3ULtXEp/AqpHhZS
         ECKEWNqK+e+Yg1YTqKqqFeXKuPy0XUL5v3kK2GzAFlPj4GixFTvWRQNtqDUodI7eXxA+
         GNBF7pN7EHHPmE1wW9qMX7i73xI50oZCoskGnrutQnG1QX7ax1r8mYH6EMmPpZm26r5V
         E/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772706459; x=1773311259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yETX3xMSflW1MuSQkbZrTWM0HWCGcnLuE8iEF4qfEkg=;
        b=PBSYIJT3POv5bijTtwThaHYR5jJZKsw49d0Fwo6XZfJKo8QO2zkfZqFvBtxfKBVNtv
         onOIfE6/M3poxCMWf7rZ5MbwDJL5/iq/QqnI/8AjEET1hB2d51QLzpTNkL72UVCIq17f
         4nppJxyaGwfVcIzK7Sw1nrbsoXAEoB0SfP/rF/nklyD8Lh66oFYOd9kcJNf2patI3Zx6
         0ofO075XtmaWHbyfDE3nsyLtelLuIiFq7na8xF8EkA/S8Y/hegtkrZqEy9waMVDYKvqR
         ocKl235mgRMyrxMfwcSyZTvz6SNMqWLSp/PM5JVAo2fRRoVqfk9KU5FfLYgcyn+ylwK/
         LWwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWL9/ZKy2V3f+Enl+1FOQZIHYSVDBSPMMVFSO20rtDEnlPseV3jOs0UPpsbFxk6xXjFM+gZ4N78NkBw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg76+LhPDh3I0hh+CBLfOu3jUcWb57j1qCAlVhh3Ymn0GeR9Qy
	zIq5UYkmCE2BBkPU8ElIyiy/5A7ptqgDt/fSyPcliU+3xq2/zMGykYqEUrr3tx0Lz6mzlfp6M0I
	uBXGT6y/p+Ok4r2TEVmH7s6ZDGww75/z7eYHYUnM/7TDXpUu9RqImIQXqnPSmrURD
X-Gm-Gg: ATEYQzzBIX3QWVayGLyZYkkUFmdgcuhjbhh5UR4agYHVSQW4ryv5ySCLcZyuSDTJWIN
	b5nIL280De9+kCrVZWWq7LfBmUAsI6hnlVDg/IUKPF3PVowaaq5kHMTwoMtWMxTTM7OoEXNTYo7
	sBFXXCyrsDI6SGc+65roc0hN7ygIiKHxSg+q+HDUu5UmOUg8K+D2IjMl3jUVvAuXALfsPTaiOWF
	XLbwo2bHcnnnBuwPih5YVXPctJ3aty4wZ6gLRG+2mzSmhDJANpXzdDwOQEV7vHAq6jD8bt3gMrC
	5BDMV+ZgL3VdQtTg0TolW0900WyNfcM/JngZJ09YhjDpnLqGsKhnUjO6TbgJwJdpbdyrHdU8sPg
	DLz2ioS8tBqxGqY5hdD9xXYcKFVbqvyyMdQQVvxzSS1fYSamzpg9idTYUaAO9pYtLqwRFZzTQm4
	ddnOg=
X-Received: by 2002:a05:6214:4ec2:b0:89a:b62:3005 with SMTP id 6a1803df08f44-89a19af23a5mr52081096d6.4.1772706459442;
        Thu, 05 Mar 2026 02:27:39 -0800 (PST)
X-Received: by 2002:a05:6214:4ec2:b0:89a:b62:3005 with SMTP id 6a1803df08f44-89a19af23a5mr52080946d6.4.1772706458996;
        Thu, 05 Mar 2026 02:27:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae666d6sm877446966b.37.2026.03.05.02.27.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 02:27:38 -0800 (PST)
Message-ID: <9529fa56-1831-4f33-affb-4940379c0f7b@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 11:27:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
To: Stanislav Zaikin <zstaseg@gmail.com>, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260305093941.305122-1-zstaseg@gmail.com>
 <20260305093941.305122-3-zstaseg@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305093941.305122-3-zstaseg@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NkzVNby9sWkZydunw18XcolcUCjTFDuA
X-Authority-Analysis: v=2.4 cv=Gu9PO01C c=1 sm=1 tr=0 ts=69a95a9c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=yr-2ec9jEi1U7REnfNwA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: NkzVNby9sWkZydunw18XcolcUCjTFDuA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA4NCBTYWx0ZWRfX3Z4UnjpiNgWx
 6eX6u4zlFVFrVPV5TNFbJrUp9aQWmCm5rw3QeY4TTfnttPLb7sUVLvSkqvBgirCEONYKhsqYOh5
 O/60DZ30lRDkgsT3VzTjw6O5IetL6TtoEpj0g7HrtILRwuedRKhasEmtLFnIyRhhPZvH1dbdOct
 CNstvgGjUpSKCcMYLiypYL1RiWq0moqhA4gc7iyy3j4XgPWfwklI/ENIbxJbJqLElO7byHL1S88
 QicUv8bJlf9gmSgitxPGqz6cSBmHTkWBaukCPp7BkQeoDWIs7WaYJ4ylj0hj1RcDW7qmhiL8cCb
 8J8DhMUA9qWfUdLUG34/04GyMHSidUoPp4PhhC2b5J5MoeRi4gSSMEvxRq6ADo5bcbNP5ZE809F
 6tMzJCSkwpI5Gc7cCtCQ8qrjxI//5IYk1N0XbBOgnx8I6ZQFaRodgGgo9PwbqgbuhGq62IBbCRA
 ydB2tE28HYTlIpNzfFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050084
X-Rspamd-Queue-Id: 9D23420FBC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-271492-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 10:39 AM, Stanislav Zaikin wrote:
> Xiaomi 12 Lite 5G is a handset released in 2022
> 
> This commit has the following features working:
> - Display (with simple fb)
> - Touchscreen
> - UFS
> - Power and volume buttons
> - Pinctrl
> - RPM Regulators
> - Remoteprocs - wifi, bluetooth
> - USB (Device Mode)
> 
> Signed-off-by: Stanislav Zaikin <zstaseg@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

