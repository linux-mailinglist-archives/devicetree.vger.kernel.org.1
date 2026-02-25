Return-Path: <devicetree+bounces-268311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFX9MTLfnmkTXgQAu9opvQ
	(envelope-from <devicetree+bounces-268311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:38:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4509D1969F2
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:38:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E971A30AF48F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 11:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF0D39449F;
	Wed, 25 Feb 2026 11:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eSCWvc3p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C4gwwuqO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A80AB39448F
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772019268; cv=none; b=j37JZhUuSLgAKRFZNmiefgdmI6qzGev4rFrwiF8w7/i8elrHhU98kKJtjVgNmSIVVNt+3B/Zb2pqm0F4uFJVSiKjHZ79GxiLKQTVKaZ3Ven3SLqlkai0ZegV+VlnXy1/uUhMFIRdVt893hMlE9t7KaXAS2HfZcroUXNHbRc9LaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772019268; c=relaxed/simple;
	bh=iop5cVSDdAoQbalJdBORgGZ2M48mSam7dmcxLyeP9tY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S+ppMLIpa6dTCAF2UeZVTilWwESAitnuXDipA4V8ChrsqZGn98d9rdb54Gw6IHJvedeazGS89WReYKxmljHWvUuGAyunNFuAgttt2ld/xZvcKOiyirsmdWdO2N2ye4HDahjpg23yhI2nOxCc+6cKMvhNZtl4POJW236H/3EAxjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eSCWvc3p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C4gwwuqO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TDGg2365415
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VxCNFP0JSoMDu9DqpciHMjNOX+Cm3zuSGrVP9fh5i6U=; b=eSCWvc3pCJ6xYTrk
	Bnb8muvNkMxkgM0LbEcP5aJXitUWIgF0KjXpOp2KR6enOtpczCCTzlZUT3GUlMaw
	GqP/3RhrN192YhO/mZJroosQad2e2V3KA3+FFB8GDdui+lwqWFcl3+/qZ1dyZ8jc
	0qpmpK6TM35R1Q/sprGaa51irmb3++xWGfKfj3LVzE9p5ySY2N/IJtH0onjZdEej
	xGBGxwfZUntm7BJ8ftV8MStd7hi6KX3e6y1LE3ktvT7F4PTCDEdxfDIpEC/EW4kq
	jlZEx05XYSEfrP+aGEZdfByP3PDqWfHGzCrzBxMS+QF1iIziwazpwkS2Iomfw5Le
	21SxAw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cherjbd0w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:34:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38a5dc3cso598373085a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 03:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772019262; x=1772624062; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VxCNFP0JSoMDu9DqpciHMjNOX+Cm3zuSGrVP9fh5i6U=;
        b=C4gwwuqOeFs5BPje944Q1H4yDQlupHrioItU3+XCyLSC8MYOUTBfQHT1rlgV7nx+1b
         Pfz8GgxVCeVW4S+WOXiuMVKLM/lZPdXx1CetsV3hrfHGLsz5fOVppDMmdg/moO4Q2gsg
         mZ1LecffxLwt3mUxxj2Gx1zb8ZkaYU+HmpJ43ZVlUqFitK+k9pRw5qnsySQZRMVbBO22
         3lsc44/bOIE+jFV7nUTLsnHiRGvXNNJdwo/82WdzEZB3WgG8Sj8Cv8R2AcaXt99SdTHb
         40HAu1UsTD/TVsWQEiqMMU5rSXvW/Knqi5w2FI76+EeCdklmhgfKRdofJQDj9ouJifzS
         s7KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772019262; x=1772624062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VxCNFP0JSoMDu9DqpciHMjNOX+Cm3zuSGrVP9fh5i6U=;
        b=hjlH2VU9LnH1rkTT2YEYGWFtvM1eSMGQjLXetJl6zkoZ08+Ha18/qDecju8GczXGjI
         pVfLDLJ0CJoy7xaaTynGqK7xj1NdyKlz4Ieve9t3I3VFhzXB6scfi04aFrK3rFATHLDs
         qlXxTL/3Up2va0lEPcjOVnduxJDWk7NisxGqONglw/mqOhQGjybrVRXcRWSw8VyJiP5k
         ixTzutJIxXCeyXHWSCV+5vy2AI6nB9q8YjNbBeZm3DTtflLzqrKgB0oLps7jR8cGjr3K
         vNSjZAUx5yddpMhwo5IzTPsfoLX+GVmiZszAHOy5Ad4dKdgF/pmGlWtAVab58cKOEWld
         GExw==
X-Forwarded-Encrypted: i=1; AJvYcCVohjc5eZPCzdziKhZO2O3oXSzHjdHabw9Qay1SaTxcupRm/T0jLzi67NpT716rbuH+ToVEvxtgm9Zb@vger.kernel.org
X-Gm-Message-State: AOJu0YwzopyBSsvFi09NGAHVzoEUIBSNweui/QsAiMCMar9lW/DaB/h/
	R4b2tCTVBFcPkovDtGNuDvzVcExsNByCCkIVQ13hbACsekGlum4zA5jQDnXXYpAO5CEsslnOjdl
	UBe6/h6RCJBxgwpBovJfZeKw+LSjpr/Pr1FOpy8F7ksvLAeMTKTR3teEmGoFdvzyv
X-Gm-Gg: ATEYQzzivxZO/0pPRYX1IFUnXGtlnDxW7TmsVzsdB1nD3cR2h23FUC+tG5cKas0eFi4
	FZpzRK1Evvn5cnmCHKOAb19z7BVNe29B8Pk6aRjb0Q81vkU4RPbWdf2glnzGwnNMiwo0hZ9JZLi
	X0m7jMobY5qcCLXYOdG8lu7Pu7CpfGPT69LXFVt9WdTF+yan+eeRN8LGnlmO2kdWCQjuJSJkeV0
	qytBF1Tyr3hKnY4oAgXL2nbKRsM9ZOhhyZwzfR3UOm0R1EXbFfW6NWd0f2ZMBeyLXhKC7yFmSZn
	hsvLk7U2H6H+jGNumqlrkN49N5/BfHFJNGbkUmZD+gdhc0FQjH3jXtTTbU1NtrmoliwXCpVTezo
	/JWV0JOQk35RMD0o+GWrclQhs5Yb8O2cibG4b41x1Y/CIpy1ZmGsfULknhqIt6n59ULOU3Gan2+
	IvPLw=
X-Received: by 2002:a05:620a:400d:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb8c9dffcdmr1595546785a.3.1772019261527;
        Wed, 25 Feb 2026 03:34:21 -0800 (PST)
X-Received: by 2002:a05:620a:400d:b0:8c5:3892:a554 with SMTP id af79cd13be357-8cb8c9dffcdmr1595544985a.3.1772019260966;
        Wed, 25 Feb 2026 03:34:20 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65f6e6b3dcasm1098893a12.25.2026.02.25.03.34.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 03:34:20 -0800 (PST)
Message-ID: <ffd47ae9-af7d-422e-9b92-fc0f73f4dc1d@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 12:34:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com>
 <20260225093155.4162177-4-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225093155.4162177-4-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDExMiBTYWx0ZWRfXzFX/6GOUmq/q
 xX+s46HHqMx4yP+Bb1lHrYhSRJ56Z8Hi3NdMpC5BJcnKM6wd5VSieHt/fUgH1YgTa0nQPY6fKgd
 Uz8DCF0+kMn3hwm1wxg+aQuRtEMlb2FIgZXWSUt4NlAc3k2RRH+Qkndmx54ptAOuZayVpI6foJt
 3RywRex/egLTVcrb0iVqC9kfOR+bAuseF6MWT5rB+UgXjoZmuOXhY84b7wskEAcpT78YYyQYlVz
 qbB2R+szQSxu0wvN5Dw+GsQgMxI5gz1fgP/K506/NUPUonIPYCnYXyNiXgolyaD8qWAx/Nirc+J
 QM3QmaHpMw3Dq+0IkxTGkPMj7oVWcrqaNYMZJu/fBB6w0yyS3WDjdUg4X82LNNlluAN2WztFQ1C
 qa8r9sCpxM69ChnO7q646CxoCZp9y9xMEKlESR/jgoniIYEJLcDf5dKpb+l5+NY0GQQg9varuh1
 PzEhFKkaBduuFz3VyiA==
X-Proofpoint-GUID: O5oDsoJQRXhsq4OKnBbbbyBQxSz8w_iD
X-Proofpoint-ORIG-GUID: O5oDsoJQRXhsq4OKnBbbbyBQxSz8w_iD
X-Authority-Analysis: v=2.4 cv=NeDrFmD4 c=1 sm=1 tr=0 ts=699ede3e cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=SlDqxh7qNjBtjB7fBNoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250112
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268311-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4509D1969F2
X-Rspamd-Action: no action

On 2/25/26 10:31 AM, Swati Agarwal wrote:
> Enable the tertiary usb controller connected to micro usb port in OTG mode
> on Lemans EVK platform.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

