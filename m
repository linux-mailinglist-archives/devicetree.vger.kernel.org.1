Return-Path: <devicetree+bounces-259425-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBINC+U9d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259425-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:11:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DD98679D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B52BF3003EDB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714F232E697;
	Mon, 26 Jan 2026 10:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QfumSZ6J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XJGPXEh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1458631354C
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422131; cv=none; b=N6GtZzxHZYdERc8yDwvebZNgz7wBZb0MSiR8ITA43F+f2gEa1wmgKSUqgL/XZ7ouU1amUjTZzORbAMkjN6XYyqNL5KRzXMQYd2tXPal+MkZHi0w+OdZGphzvaEaPJKMeQa/szM/AMu4XTzSax2YyyE9cBSLZOMYi/ezuAUHNoNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422131; c=relaxed/simple;
	bh=HF5pe8Zyt+EWAXDo1FjJ8+pf/tWniGIVpmIvXpoO91c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lQzCJGl0gcL20j+xShNu6wW9nnUy2yjXUQHEER8+gUn2cX4gTTW1rzZVpfsA/9guESt4sHnrL6kGlCxLtYjaVNSMn9LStONZRkH3VFAVf8fswK7H99/OZemoOEKnugusQEmf0yb7OgHizBJVCLcUrQ+wnujqx4mZvZP7HWXBCfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QfumSZ6J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XJGPXEh3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q9Om6U1783032
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A7HrPtPPW5vdxOHCGF8VzY7vLYkOmL21Y70PPkKwr0Y=; b=QfumSZ6JMWLOsqoe
	wWV1T5HXf/ry1F6+MM742UL6RTB9z/jBpaZNS1VRUgjHDn1EVyR5O0siWBuZZM34
	962O5MVfhHAkng3zpN7679ePwipMguiMdjcCC339sIpv74qpiGwwGwR+mX0RWA9p
	V2DseSr2bqYLbJWsGMShnmwpl5ttpPNdrn71aV2antZRzM03pexeyf0zhpqtfsDL
	gncyQB2/b/uCm3BxeyGB4j7/mQQsFCDD8kVJbDmGYs3kOPROzJOmrYKzCw/G6xy8
	LzjPdOhUN9IsBB42dtZWmUmi4alaflaVM1gZNGCYrIUsutq7z+am9dQtGS8kfLdd
	yrbCAg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q43yv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:08:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a182d4e1so92003385a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769422128; x=1770026928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A7HrPtPPW5vdxOHCGF8VzY7vLYkOmL21Y70PPkKwr0Y=;
        b=XJGPXEh3O5wEtLtDZqlsTCNwMKRxJs7QuQFjwnXix3TbdRITp0tN+x70qAQBZX4X5W
         DIsIkLJhMnzV9puIME53d9CxcW+YEnEIRIXsWQON32+ThgdIDRSgaKCSMK4EEBt2YGDV
         eJrLaq2eEzOVesXEt7WOpIsy/l0h7BOYmL9uNRW2HIh45kKPkHLWOBfygm5s9AVaIzlM
         ce/yhMbO3EIKL/oyulpLfXLo3aR4t3M8D2DRc/xNXsrULUCts1lev1K0Blf2df6MZ7yz
         PxtYbBokSu32hkLHt/2TlOWVEqAF8xBDMz5SQDB8JQs22zyK3jDu6NxUyWhzyy1LvwMh
         USEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422128; x=1770026928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7HrPtPPW5vdxOHCGF8VzY7vLYkOmL21Y70PPkKwr0Y=;
        b=SGpLmDqDYpEfV3NxEBSv/KkoEHNBtU8C2FwtyLg5L7oeFqXOKvwl5KfsOO8RPm7arQ
         Uko2C0JglfgIdlv3pFzLOfO470ujny12mMbOgvOTnKyFy1lvF73V+j9eP8DBXnPGwH9p
         lMAtxgp+apUfc3/YrjCLWHH5r9sPayef7ZCIg60H6+v9gJbAYr3jlc72Zf70H9x95Q02
         qxHrhUFVsSJ6Pek9nxd9WQldPUuvUvU4d5Snd5f4B8Gh4INwqOOQJrkHg+X/8T2nw5lo
         i/Wk8+PSfKBaRJNJyq/Mbqv7FXJvCnw3xLMRe717v93HAyo9vVSq+YNMaCBKS45t6mF4
         6zlA==
X-Forwarded-Encrypted: i=1; AJvYcCUkHoTyXoJoLo5sR+iSBJVuoTQTzGy3DDWQ1BQFIZ4OTipcA9eOu1AuZCu/bLv7AXjpL3ljC+KzFBUs@vger.kernel.org
X-Gm-Message-State: AOJu0YweJD9QAKFBFEPQZhyMc2qAtYRmOkMh77GFC9tOUpdJ6GT/9QVP
	fDZrzLFPWS5y4SmvFVyIOMDCNQNTc9KDa+GEEa+wRg44lUscvsndyjVj6lB0l6ZT9Jtkt7IA7XD
	NFvDelOgXOuw6X+R2PTiYVSCNJSCsw5KNw11I8kG1TikF2xGqHI1+ffAU4me5XU9CiZFPXam7
X-Gm-Gg: AZuq6aKeE3N69UQg3Vy4srPv/Qlu6KJqdrkj7PVJv6U6DagEsc3KXkgtUzW6Z8cf0y2
	0psAe9/QdvSMy0qxy9HmTD0SIVj8qfincYQTvvYsGXilioP4eiI1T9t2S9fw9Uwyrx19QCATaRn
	Zd4DvkHRDSKM3abfY+3fFLwf7/lN23amvSBUN7kh4yRmZDwzzI6L8dUOwd7Ml1Gld7LyFuFY4lK
	rV40yY8OHq+MLCo3b/62X5t19p2EaZheepXPgCECb6R0CUO9qsHlcBzNKplkrogxzRcDRtLtNdB
	qVl7BYmrdAOKHSmwBMDSopinWB9TLqUp+PX1T1f9jWztTCutksRotDt5daapmFd0i5UnZOhSsbi
	YWRJenjLaT/LDl2JWM2/99cKxBl5k2LrBf2UDNJAIp9C7i+06OD8RzrOD51hd9FADH6M=
X-Received: by 2002:a05:620a:4090:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c6f962e9a0mr310855585a.7.1769422128317;
        Mon, 26 Jan 2026 02:08:48 -0800 (PST)
X-Received: by 2002:a05:620a:4090:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c6f962e9a0mr310853485a.7.1769422127834;
        Mon, 26 Jan 2026 02:08:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b6fc498sm604771466b.39.2026.01.26.02.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 02:08:47 -0800 (PST)
Message-ID: <895a86b6-450a-4bc7-8042-6bbd7e908eeb@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 11:08:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI to
 DP bridge node
To: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: robdclark@gmail.com, dmitry.baryshkov@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
References: <20260124203925.2614008-1-quic_amakhija@quicinc.com>
 <20260124203925.2614008-3-quic_amakhija@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260124203925.2614008-3-quic_amakhija@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nsmFbn7nmCLvLn7o3-A7SYiS8XILR5gm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NiBTYWx0ZWRfX9cwA4IYL/1Fr
 67h1nA8nEXtiujSORM6rMDZefgd67hQJ8CLVbiZyYOtVgDrHUdhqh3m1gfQdJt4oGwGN8qxvVnI
 w6hlg+C56QtDe9vrCHIoycm5i+kq84e1Tvd9eNJEJJcboCaPEUUNzpMInvufxC9EM901aqC+bf3
 +wIGICe0pzNEyAiNWEFJ4koj1qf7wrdKRLkLj0mI5yvSDtErHIYlV+bs65rfo5uJdI7T0HN5bgz
 S8L1W4po84Bm4RtqW+pDL7y5oe/SsvZulHsW95fzgoS/Y94FnEOudY9kMb4z4Cc8uHFoy1UqZLp
 b4iZ9JzRHjGjVrFuxCdHvelMPvxche7+eKMvryezXf7Pe0kb/c6QnjcaXsIasPwHT7/0hrA/hkR
 EEWmemi+l3O2SPEX+FfOhJi927KfSnnDxB5LCneTzos2zw6ArUbiUf9Uc4pfZZE5bQJDjl1i/RL
 rBfyOBp2K9XyZPQJz6w==
X-Proofpoint-ORIG-GUID: nsmFbn7nmCLvLn7o3-A7SYiS8XILR5gm
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=69773d31 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=En4R4P6zDXfLUnqyaIQA:9 a=QEXdDO2ut3YA:10 a=ue8pFixJmkwA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,oss.qualcomm.com,poorly.run,somainline.org,kernel.org,intel.com,linaro.org,ideasonboard.com,marek.ca,kwiboo.se,quicinc.com];
	TAGGED_FROM(0.00)[bounces-259425-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 83DD98679D
X-Rspamd-Action: no action

On 1/24/26 9:39 PM, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device node.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


