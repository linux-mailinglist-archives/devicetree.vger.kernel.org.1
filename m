Return-Path: <devicetree+bounces-260399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFwqBNIGemlE1gEAu9opvQ
	(envelope-from <devicetree+bounces-260399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:53:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 698F1A19EE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E37300C5BD
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EDA2350A22;
	Wed, 28 Jan 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g5wTO0wR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Nszg0aTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3816350A0F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604633; cv=none; b=BdGknJDU9LGI46+VrXh56EwKr5oY87NV+DYICa7SeEN/XEkP/Mrevp/zP5JEBRSelT1Wv36QsZ+EA/WbkFQfWTnE0DCYfckloClgx7XjDE0IQm5P3vD13V3n99RWxT3lSi4ErZ1ilgQ2wrJvsR+o471lCOiA19RbdLt+rXWhe08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604633; c=relaxed/simple;
	bh=x05EH6IoJ4/iyPVoHvPoWf1Qp32Y7RrlJkeIkp9TeHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TGjqBLAz99Xrn4ulVkM+BL4iCYOvt+aZWv3bSFJO4DqzjS7WdWq/WF0VmWA9Z0+lA/4mRwSBZHljl8lq2hSokuk9YcwX/sYzMux3vtxNg7zSzxZOT2S3MOzs2TNbRp7ArOFuwxZwunwy1xrSIR3OtjMOA1OsJ/KpmtUwFcLNI2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g5wTO0wR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Nszg0aTk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92X0g4008452
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:50:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qmPSdwD92PL71U20ccvuz7Jt/7HoYLnD/OdLvqYMNuk=; b=g5wTO0wRn1gZ2jRz
	t6FTaG7ilZ0rny3Z3eWEMa95C4Blpfp+jz0dsiLL/O8aklgUGoNJUWBTgPnMzXi7
	tSf+/q1SJiAqq3ksReO7xhvXkJD9g4rKcbr/m06vSQw11GkEXxg76rAMbnriMtv7
	fXp22kVbFZSAMNzO4qYmbe4Dp1xFtzvPDTNED5Cv3k1g8wzS+NYdU+w202vmXB6C
	0pniWoT1E1aeXlEBO6JRVo6yyI+eVKr45SlYFoMUS79o0HOUzaVy1ZlrI0W8AO07
	plXVkY0OqCUe1VX7Tvxw4yCpb3mHAMhXB3BkhYrA7o1palCaldshoDbDtPUjpEBt
	n73WVw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1jx3hcc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 12:50:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a78c094ad6so72926315ad.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 04:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769604629; x=1770209429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qmPSdwD92PL71U20ccvuz7Jt/7HoYLnD/OdLvqYMNuk=;
        b=Nszg0aTk7vjSLbqcd3qqetyjLJ9hAj0AncZ0O8rnDZKv20X4bGank7bEzhGfCL3VrJ
         FaU6HjLWI8XPF81dfSVAkZTFDecHsDM2kThYFn0H1iVAXt5USHe3GQVCASaX4kAhUU6g
         DYrsi35G3R53iT/HXTxQRj87wYS1SSfPVv8JnQ8uWlcG8GKoWrFd59opet0VXln49ESs
         hD0olo5aEquZYFY7whiVZRNok0UQJuot9ibbDQpvb22YbDxMG8Q1cE/RjLse2HkGojwF
         l39gkaviV449uc3LvBiIAOsJ8bEgkCM43OzjwZwhyxn+ZXqcWb5wSHN2XwrXZ5KpKIVd
         nkZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769604629; x=1770209429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qmPSdwD92PL71U20ccvuz7Jt/7HoYLnD/OdLvqYMNuk=;
        b=EWsvGb8jyYRDc6w6oNN93h4SUrm4ssPUrLbwhOGfr5Y7uCyf1UwV80l9yUl0lsabSv
         34h2/Xydec47ex1Z8G62dBo+vRUsa+LBNYMldkRH6hLG7z7Oi8HSq0bwsvcfrEpiLLU8
         RwR8/KFFCjmrejDH+m1lLQ81c9QFzPzj7mT6Fpv958yUeCZHT3rxrL53rG93J/bbW+RS
         sqctEBch8mxuKMm/8ZPFbsMTPE0KLqPwvql/besDCY+BItww3z+tMAgL/sw9ZcoXyYwd
         DcIfkUfllT+VP6vaMw/HjKINSfVBiq2wb379TOq2N783upFczLzrVp3kOPZ27v2+cdD7
         vqfA==
X-Forwarded-Encrypted: i=1; AJvYcCW+GKMIsdQr+l3nu1MOUFoUFVI0BO0ulNmkxKRcSZ134UvxWtofHENSqPG46Bi4C7nbN0z42mt+84Ys@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9j8bAYa02My8DaJZTX3BB8g4CzwzpdMdnrB2006m/zrCxpP8F
	/EmJQz9zOXl4n+iSJ25z9EZPU42tbmv8efHrQqw8GuWo0esKkLMmfcWKjVpZjMnthxG9+QIlSC5
	REuAE1DXfk5jdOj0U0s6JbXpbcKKBOmr/O67HJYv7Vxr385c/K4LpEK280C/UoxRx
X-Gm-Gg: AZuq6aJoDRbnV7pdO6WzfCXJ7FcUtD2l1PnN0YGwlzEBjoJjMBiUZ5Auyckz9bMUP66
	1p8Ptw9TOz618rbGGn4tjmSCKISCuTTOZLWFR5M1DVQpc7iCLXKB6EXdkRHTjubrPo/Pg/u60NT
	CnArx+eywBPjEDJ/LhtlAR0MZuc60IkE/qf4PfLZo3mxD20fggTP2SPCxpCUT+FVKjGlq1Ucmfa
	PjkrQzLUEKo0AsCkVHtPghrt13OamJ40a/fPav7JYzcqTmZeIkqPLCJBXA1joTfQ3S0x3IFcgUN
	rColRuPLSzrvQmBTMZizVfNdG4R4DXO2uP5tFBI6Eyo5W0pFNM2QwmtvA4sIhpQWL9QSF2EGR1H
	qdOdu85BusjdWURxuAQFEQjPl7uy6YlHz1YYSv7Pojt0=
X-Received: by 2002:a17:903:2a84:b0:2a1:4c31:333 with SMTP id d9443c01a7336-2a870d645demr52336565ad.19.1769604629335;
        Wed, 28 Jan 2026 04:50:29 -0800 (PST)
X-Received: by 2002:a17:903:2a84:b0:2a1:4c31:333 with SMTP id d9443c01a7336-2a870d645demr52336285ad.19.1769604628714;
        Wed, 28 Jan 2026 04:50:28 -0800 (PST)
Received: from [192.168.0.171] ([49.205.248.59])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3d4csm23365005ad.56.2026.01.28.04.50.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:50:28 -0800 (PST)
Message-ID: <a902c741-bc74-49a9-bf09-070ba7b5adb7@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 18:20:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] media: dt-bindings: qcom-sc7180-venus: move
 video-firmware here
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
 <20260127-venus-iris-flip-switch-v3-3-7f37689f4b39@oss.qualcomm.com>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-3-7f37689f4b39@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Mc2JBkojTUBsrf9riFWPJIGqBYRp4q9v
X-Authority-Analysis: v=2.4 cv=duPWylg4 c=1 sm=1 tr=0 ts=697a0616 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=4hJEjaH6g9CgPEswoao2AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=taCg-2STDlqsnU512KsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwNSBTYWx0ZWRfX+82owouNAZGo
 3aSzPXjNOB2+/FIkdvXXa7+wyTGLL2FD8DdPAvOiOWaC7QtlvVIgkF52BTspXrS+ae63ezkNoob
 C3NgeordGc1IO0EQojobeNbOFClnz6pvmTuBUJGJ63eenm+oSYLOfZs1Xps+Bq3OwqujpWr0X1p
 /dhaJtLFvNuaOECDp4CRmxCepZg1Boz8nJzxjsfzPVvq0j6L9ABoFLDo+M9i35zz7glt5oBOHbn
 v6SGEBWSZxfh13xUJ119GfooHzlzNC0aWD/FPAI81pazAxbxjQsEr1M9qXbSno4zx3ykttkt40i
 rb+33ce0TEMbmnzm+ckHC7/NJc6YFUJFkaXC8zd51iTE0pQH6oypkGWc12AiY2nkbP923g08rED
 zynH+bZ1oxYLbvB5hwHfWGPgubiaGi4Z9M8klnW0L+u5Tr/eYj91nu02kclp4DzxKruLItbKSUX
 LdR3U9qEjmRvH9ONBBQ==
X-Proofpoint-GUID: Mc2JBkojTUBsrf9riFWPJIGqBYRp4q9v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-260399-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 698F1A19EE
X-Rspamd-Action: no action


On 1/27/2026 5:53 PM, Dmitry Baryshkov wrote:
> As SC7180 is the only remaining user of the non-TZ / non-PAS setup which
> uses the video-firmware subnode, move its definition from the common
> schema to the SC7180-specific one.
> 
> These properties do not accurately describe the hardware.  Future
> platforms that are going to support non-TZ setup will use different
> semantics and different DT ABI (using the iommu-map property).
> 
> Signed-off-by: Dmitry Baryshkov<dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

