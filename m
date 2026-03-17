Return-Path: <devicetree+bounces-276514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OA1+BUkIuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:52:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC762A51FE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D1436304602A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FC83932EF;
	Tue, 17 Mar 2026 07:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lWTMv98E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cGnOL0wM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0856C3932C6
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733787; cv=none; b=iaZNsAXLmW+paGd1NQwAjjs6UPilTW+FB1xdweIp3yupHkWLaXXfjPBbHRww8w7chAnrZhghW2jLC0biOBPKYCMcqAxOIB7T2ljVzRk7vJdYKO+IRNLYM9ii76Tr061U+JGSMqEV5h10J4Nc8sOZCaJEWAV18Zc2rGf3/KJNOaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733787; c=relaxed/simple;
	bh=kVYspbU/0tkfmgemtT9Y6p4T462qqoPfacPRrQhNkxs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EZ3e9fmm/eUDyCKGhkmJ5Fb8nvyXqqQlFfZnEIGjh7yG2GlXUo83qgQBkc93odE5BOUh5YiBd3Zo76S8uFpuMLLP0k2v6C50Age6ycGTLDY5ugVqTjJb8Gt9jG8iBFtqk/H5yjspN7ptHk+YbLAvFjT5uJvVVKexyJ0rMUimGIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lWTMv98E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cGnOL0wM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7RILe2906068
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=; b=lWTMv98E2tO3q66v
	OR0krl8HhniYQSwpKe7Tr10cGKVDxqpntDeaW45VLVu2cabUnZEarwri++sdHqxl
	t4j9Fditta23KoD4hyaV4uaYnRZ/W+LWt42B/CTdLoVPg0KlRDTnWZOqNg5RZ1y5
	G4U5dYZyTCRlD8SNOcBPJfnxDQhdKMgL0a0ojjpMon/yHnmUBd3SOdbINMHwWKq/
	Q4U6d0zZcnl1UxRRNYFNy7Q4g2P+Xs+APvYu0mcfRH7T0BPNUJg4YVBjxkaIb3+2
	fMr78/KvVuU/0oQDRtquAoUawI7T/LC6FluHd0WRRIVjFFzR6t/Zi0KSt1U2hJne
	QrKt8Q==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2jxg2e7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:49:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-82984060901so522621b3a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773733783; x=1774338583; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=;
        b=cGnOL0wMZJA8Yax1H/s/2syABH2eVzbxk7MZiB2tcw/gV1RhoFCBq+Yp9WgKWE+f5b
         69178IeprTxNSrL2CU4n5sF2SllzC1OkT0gGf79x8bU8feF3Je/XUFAoHbavgqgEwxsE
         Uon8RfUR7wk+Uv4cH+BVQhVu4UNDEpL+vMvaWzYVD+pvSOaaZHt6Jae7NT7XpyWSIW22
         thULqbqTHa6llJ96p0ZpbIh2gY7+c4dgMt58O6tgqf6i8hUDstPFRu1H/h3D+0JxBiLW
         wZ8CNkGnc/ci2Ym4O3Bid4q7GLiOEd0W7uhXTlZCeosncb6LlgE52/lH5GV03Zfbe5XH
         OQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773733783; x=1774338583;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQGC52Uv4tcckpg5TgnxQjBECkfAnFsdlOKaF8a6K/s=;
        b=M8dRKoUBubIMeJXwzXrZ9aPiJGt5A0YiBy+H9tsPq8C1ueE6lu/CvWg+9k2E6MK45A
         TsxmtsIHPvhd+T9s22g0fMcovi9VZPYauo3q2LLmBXTgpmahBPY8X95FkTpCFcmcZsJC
         VMTmp388AUFMtDikZbpIu2H3I/wQxY8KvFnY7kBOC+Iy2uVLOQdGVPgSfXIIn37TudPr
         IYKWFYFx700AI1ksGq6N65Md4582UkjhbXW6N6/k4c/loIPtbpkQxx8SOVPvYxIc5b38
         2EHXNVl23JiPJAr0HLyqPQhg1mUC+evl7OY1WNEZ88pPmOfUxfzhbWbyf25/4mymYgSk
         cjwA==
X-Forwarded-Encrypted: i=1; AJvYcCVUPtB+9ABYpEYCLVENjfOJ2hc81XKz2RHlgZkNL8HJoZNKtuCNQp0hEVZuvrAvQFlZpNNf2RI69FOG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw98cMXPGDcqwZX4qDe3mOMm1NmSFb2DTn5A3NieY8ZvCkb1LcG
	sBBcl6E3OZscXhuRZ4OO7NgvdGVmLY7i/YB+c+Zt/m3o9xGDNem57+NoIP3NswapbRIQBDubMi0
	KX2NQIFCBXK6D8aYq5oPzyDIT1IY8wxx6cMFjJ1i+z2tWkeNjNjWc0fZn5BkK5Hhx
X-Gm-Gg: ATEYQzz7VJglgPlzNKDCiiXf89Hg6UVc8ABdO0tKHbEnqeNHffvJs+26STrQSrOICpZ
	Z/gT54yRoAHHGYAz0IaIKwSPKUTYyY/qjPEDwjVQ738DEv+svKHdyk4VTuBQ1QAQhTNC860GUw+
	v/FdIkEbKdfDOGT5Ryqb2gKPWHjQVjzhEuJttX40HD2YakTk8/AjBGslUPzM/7E7EtbCCd+jo8y
	kIV9qPC9S7cNf98uaYd03Z6LK+p20Lddvh4Uan9VXlJL/xUXJHb86n4IiCgo7/pi1ROX9ddYJn3
	WzCPXeu+D2xzpwHEX9cbLteNWIAlKtjVNYrYKURhlahvt7PizZCV4W4r01dLQHjR+/bpb63ThEx
	m8RqTGLdlb5JhhGWMsyc1sZgxTywI8c/BZV8GdTAD+T9XdwEjEsXeQQ==
X-Received: by 2002:a05:6a00:92a7:b0:7e8:3fcb:9b06 with SMTP id d2e1a72fcca58-82a56129c04mr2228700b3a.28.1773733783384;
        Tue, 17 Mar 2026 00:49:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:92a7:b0:7e8:3fcb:9b06 with SMTP id d2e1a72fcca58-82a56129c04mr2228678b3a.28.1773733782886;
        Tue, 17 Mar 2026 00:49:42 -0700 (PDT)
Received: from [10.0.0.3] ([106.222.229.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a13a2f2d6sm20342927b3a.9.2026.03.17.00.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 00:49:42 -0700 (PDT)
Message-ID: <fc0ced66-901d-40b4-2a07-ad00f7d47a65@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 13:19:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8550: correct Iris corners for
 the MXC rail
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-iris-fix-corners-v1-0-32a393c25dda@oss.qualcomm.com>
 <20260313-iris-fix-corners-v1-4-32a393c25dda@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260313-iris-fix-corners-v1-4-32a393c25dda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ABtphoQLp1p7C8xHK0oxCpQ4S9MihgFL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA2NyBTYWx0ZWRfX1Cs3BdKysWxq
 tthYkPXFbifKfdIxVJN17yX4h5P9Wafdhyz0RzNeA08aa+sEWlP5c+y3IArl+1KiTtPf3npsUWe
 7S5TQZtn8QAd0d5PWQZ4VbX/D0yvAtUQYCsPcmUG3vZOhOCxF4lKRAYreRcPnWbiDZk3bPBDZXF
 tk3hRF1JBfEiIb1cil9Dtd3a1xJ3dlqUSpwfdZbhTZ1Op8wjupDvgkUHNw867fU/UyFvLzUeDsp
 ANnDiZkv/TvWEPIZa791GuAum7hnyU1eIjxPdSrGpECwGZkE1IzAZwiqbCtgr0yQ/zOtYrn6H3Y
 xLqGuCSpr5J3SHfzLP61xSY7o7gblef90EHQygqyu3pYUD40Vwhre+dSjWEY0cD9wepTGBim9O/
 n4R9I2l5WkfxYjx6cbeei/xE+n6JiGs6LIEBaFv4N15K8dnqm6uyoCMK0bUEtOQtdHbCvFSDFTx
 Bz4lRChnZ2cCejILQwQ==
X-Authority-Analysis: v=2.4 cv=c4imgB9l c=1 sm=1 tr=0 ts=69b90798 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=RgczR8+8wRjDfzPIf2UjDw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=jz17cmUFc4N99GX7AB4A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: ABtphoQLp1p7C8xHK0oxCpQ4S9MihgFL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170067
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276514-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6EC762A51FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:57 PM, Dmitry Baryshkov wrote:
> The corners of the MVS0 / MVS0C clocks on the MMCX rail don't always
> match the PLL corners on the MXC rail. Correct the performance corners
> for the MXC rail following the PLL documentation.
> 
> Fixes: 41661853ae8e ("arm64: dts: qcom: sm8550: add iris DT node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index e3f93f4f412d..6a338c522ee9 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3320,19 +3320,19 @@ opp-338000000 {
>  
>  				opp-366000000 {
>  					opp-hz = /bits/ 64 <366000000>;
> -					required-opps = <&rpmhpd_opp_svs_l1>,
> +					required-opps = <&rpmhpd_opp_svs>,
>  							<&rpmhpd_opp_svs_l1>;
>  				};
>  
>  				opp-444000000 {
>  					opp-hz = /bits/ 64 <444000000>;
> -					required-opps = <&rpmhpd_opp_nom>,
> +					required-opps = <&rpmhpd_opp_svs_l1>,
>  							<&rpmhpd_opp_nom>;
>  				};
>  
>  				opp-533333334 {
>  					opp-hz = /bits/ 64 <533333334>;
> -					required-opps = <&rpmhpd_opp_turbo>,
> +					required-opps = <&rpmhpd_opp_nom>,
>  							<&rpmhpd_opp_turbo>;
>  				};
>  			};
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

