Return-Path: <devicetree+bounces-259875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMPOGjaueGlasAEAu9opvQ
	(envelope-from <devicetree+bounces-259875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:23:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAF19443D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FB35300D254
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8438634D3BF;
	Tue, 27 Jan 2026 12:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HgoSEdbw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OPyxfpst"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D65334D383
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516540; cv=none; b=rpb//Vapj0eAZXk4CVzR3FXNs0J1ibrrTodVCaE2fByPFz8ONIKTAMJgb+uGoFDSalLSM02HW4azuQzK1CGpfzFaUdmJOwLw+WehdkcQZoF1iKhXk/52kE/0yOUG4Ud8aBvdftB4d1qLzDnHRHV04qsRPHUFgcZl9tyBjIAQS8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516540; c=relaxed/simple;
	bh=m4ARcqvHiYgA3n4w7mt1f54tn6J6/N9uu0/8PXH1HEc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IDnwAsZ/vGF2/UhDEXn+mdkmUSCPUO9zbgMBByL2Idc0GV/DtnOlB0mSHsqr/lbzL6a3S2eBCm9aD6TuUWCrJgmog2SFiq6LD/hDlkP6hSfBCqZtXtNqKF0j0O8hH/1EpeRAB/eblYT/gPfZZpos0oFjWsxXg5JqezDfAzBt2/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HgoSEdbw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OPyxfpst; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R9u2mW171353
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:22:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m4ARcqvHiYgA3n4w7mt1f54tn6J6/N9uu0/8PXH1HEc=; b=HgoSEdbwDaxS4qRx
	1mLrMplBoc3UeTZ98So3u1hniY9FelugKauEiRrMM+Zp95LyLIXsLypRDOKv9bQz
	2mrQRDPLKPBeQLXhHGILMhaky8Id9EE4u3AxsvLhymgREpfAF3JVlKwiKBS7azHA
	AB4ZJYf9QS69R3ctI/CGkjx4LSKBkhDLDAZQHZ+a4vCGnnCyxHJg+FCJWiFcAcHX
	KyKq8bhBiy0l6SYKz2U5LfCzfO+NPw/lvp83kE2fsI0gOsCsEBwbfeUT+Szzk8fz
	AQznP4wq1YTmQqLEfI8NuXEwUryUDWZT6TqFVIzU95uRHAGgvSFBYOaWC/tcFPBf
	nJM8tg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a2s70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:22:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34cc8bf226cso5742079a91.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:22:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769516538; x=1770121338; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m4ARcqvHiYgA3n4w7mt1f54tn6J6/N9uu0/8PXH1HEc=;
        b=OPyxfpstpPFTTjngTtXLAaZ4klwOgpVVPHPzvaq6GGxSO1GFCFBH5KOrDyPI7oNWMV
         l9p1P0jWWoexNm0TKk9/+60igdWJlmtFJt0tWbBNOxo4Z+2C0O6eHB9k2uesPYl5gov5
         r40PMp2TOdc15lwjH6pUhyVjsnlil/yL319ZzsAAsZHI4w1s6tkaJrhkNAnW0ATsUcYH
         iL9frDzEeWvy+v7TrPrsZdNw8ysNy/q2LUNqplSNTB4hocnK0IN0Y0hHVrK14aU5doml
         aQFr2En2tjmqNmB4e6N5prx+4XY8P1/onPSUWFkEG5+rr/7YvmawQy49wHlV0PnQCMwV
         N1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769516538; x=1770121338;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m4ARcqvHiYgA3n4w7mt1f54tn6J6/N9uu0/8PXH1HEc=;
        b=GkTEGAG5SPmKaDk14J+Z68DDlvF4tBpUGYmG5c6IivI8qq89oMt0WUtluyqu1VXEvN
         da2IKq2AqP56ulEkvp8mC+QvfEDC5rX65q31vqtg/d/8a62wHOcWDKzdd+Z7KnpxLKZb
         RE7NaIjxxIblvO40EvwRykcfsbOIprEwUi+PRCG4DssZerDEFAED3QKheVm2QY9bbFRO
         KHSw4qm9lSnLU6MGpY91UW8if0XuSQ9SifTQAIeuVGq4+7x1i9bXPpLP2Rhlbz6ULKjw
         cKA/l6f2Pc+T9eRpfayb5Nm1lSnyz5FoB0cWHBRI7VyMpYfw6UObgr/LugiEnrLF8ypR
         e6DQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/qt5knl9P7BydxoHjKMeKxS7wxRWjcLrjWbqf+eX4blrQr0t7s8M8gHSrJat5eq+sSM152GHym8e2@vger.kernel.org
X-Gm-Message-State: AOJu0YywVqiYwRhlTGapafS7CY1q99Hx6NMNRUADBgbxAZvrBrNvps0/
	bDl3Fse+DaXumevJkjBtjHxEBKOxScLvsgp0acMKT3nnGFbvymnitr5ykn6EDnkIZmQB0Oq6pT+
	u9iuKkMIuCIL6jZdjFlLtV00k1igV8gqchXqAcMLKKi6TaIG+QA4Xeb3FBQrATzYi
X-Gm-Gg: AZuq6aKHxgXcnOi3zC8r6yHUn18yHawcSWUYzi+iANn9qu1HwLPeo2TtTla0lrrL6Vr
	ZzjONkBHtX8xe3Y/MYPgYk/LAif1HLhyqJ/KLhZdKr5ZNTnp/E8rvt4SlYE+7ofhiTWW+69UxY8
	HJuglYuoPm3gEyPY6TCO++djcq4EqfgMrERtnLIrHoEwZ/+lzZP7gzPAfUKROlGLghrGVA5iz6y
	JMbschCZPGTrSDeQR8zZlMdVSt5ENwKB3P7Z9cn/jwEKCKX7xCQA3eOmfMSb9YTjZlMC2RUjpsw
	k5D6vEucjwMQ+4FSvSepOVRlOJWc9TueGQNqC2o7phJoBMS37iUMDZKEFgEHFtDPMmjjzjGClhA
	11+y3QDgFCcQ0b9ttXUclCOlfy8G64BxeWR6lfDwigusnXKuL1H03TXTblnViFybov8vlUkpieA
	==
X-Received: by 2002:a17:902:d58d:b0:2a0:b7d3:eec5 with SMTP id d9443c01a7336-2a870de2f61mr16346175ad.33.1769516537604;
        Tue, 27 Jan 2026 04:22:17 -0800 (PST)
X-Received: by 2002:a17:902:d58d:b0:2a0:b7d3:eec5 with SMTP id d9443c01a7336-2a870de2f61mr16346015ad.33.1769516537136;
        Tue, 27 Jan 2026 04:22:17 -0800 (PST)
Received: from [10.133.33.98] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8720b5bf9sm16151725ad.35.2026.01.27.04.22.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:22:15 -0800 (PST)
Message-ID: <6b844400-54fd-4eb7-95a7-21942529de58@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 20:22:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa: Add EL2 overlay for hamoa-evk
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
References: <20260127062425.1084673-1-xin.liu@oss.qualcomm.com>
 <a780c082-083c-4d6f-9f35-37170b55339b@oss.qualcomm.com>
From: Xin Liu <xin.liu@oss.qualcomm.com>
In-Reply-To: <a780c082-083c-4d6f-9f35-37170b55339b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEwMCBTYWx0ZWRfX2tEmARDVohVK
 1VWi+XvSC4EH7Ea+ul4PIUKRSpREa9uDGLGA4U+sw23TTciEob1H3KxAj9Qu+n3ch7IkfRfOznh
 vhn8gUif6Zl+kqwaLTwes/GwFVVd2omb3FtWR7uM3xyySp6N5aLmktQqEzWTgexfb9N4NIgVwiw
 qfFpiWW29w6PpY87oUmTGKGvHG7AzC8SDCmWnVZPTAXELgxYA7d2ailasccC2ai9b5UFnX9W6X2
 qyzU0OhTzHa3apC35wGSsec3nDfYh1XEzgr1oPf/HYQDksh/mx1TQzEKr1W/pVfk5z43qxwEX1w
 atJZxhGJsDxQyL/3Dk7QSAUvX8SC4V7IXwJC9FiD/dOfwD2Hesme5BFbm8VYqa5JoCRpYtPjEUb
 SYQyPFFeG38oYBbfwPuf76LoPHYjoKDeHr3SNF6dCWP/DRJCEYLTfGE4tbncrwYH8ocJVUap6S+
 5v8rjJD61AHnhD/kZQw==
X-Proofpoint-ORIG-GUID: 00KrwtJZ2HLgRFvGTC-zT1QJcWHm5XoP
X-Proofpoint-GUID: 00KrwtJZ2HLgRFvGTC-zT1QJcWHm5XoP
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978adfa cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=xKXlBZwc0vYRAT35WmkA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259875-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AEAF19443D
X-Rspamd-Action: no action


On 1/27/2026 7:03 PM, Konrad Dybcio wrote:
> On 1/27/26 7:24 AM, Xin Liu wrote:
>> Add support for building an EL2 combined DTB for the hamoa-evk
>> in the Qualcomm DTS Makefile.
>>
>> The new hamoa-iot-evk-el2.dtb is generated by combining the base
>> hamoa-iot-evk.dtb with the x1-el2.dtbo overlay, enabling EL2-specific
>> configurations required by the platform.
>>
>> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> This should live a couple lines higher!
>
> Konrad

So sorry about that, I know about it from now on.
I have fixed the indentation. Do I still need to resubmit?

Thanks,

Xin


