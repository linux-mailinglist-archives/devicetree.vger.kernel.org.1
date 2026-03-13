Return-Path: <devicetree+bounces-275358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UE5ELL0ttGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CEA286066
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A706330CD994
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417A73ACA72;
	Fri, 13 Mar 2026 15:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GC8FSReq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c6QxsaZG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA35F398914
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415027; cv=none; b=SMUmSd/UIEGTgfIYnLZUa26BzCUClO/3J1jSgtKgkYLDDzlp5eqmJ+ViKLEzrn6LCwySxzqNvj29tn1n70i5ZsibESIRfm9mfwlxcX/5HVtibC9OnouKo0Dwfb44CHDY/fs0k7btZ6nd1SamDm/qlrCgulKul2uPopGRvWZr9/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415027; c=relaxed/simple;
	bh=DUcBuDzR8Vt3nmScARMkm9CX8EQAoi9nu6O26gVJJkw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+Xx1yRQBwLohuExKFRL2Tpv5XOI7wQu1ThQRu6IU2VNLOBkqmTIw0wAbMRHIAFmfy68i1WvFyhgUTg16sZ1eXiOndo3wolXVSIOIqbRHGsGrAfIbfVV9mx7Mv0+VXj3zB2c5dY1MZugHwdZuxxqJNEuyasFp/so0dhMxCh7BJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GC8FSReq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c6QxsaZG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAsK04526847
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:17:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v3eFun+R7DEVcMmqGCgOvog+ta9UM0shehTjUam8d9o=; b=GC8FSReqDP4KXEVA
	kT3T4Jm95n6NHAPATSvGU2N3ykZH2lgZ67lLED6+Kr7x1uLvwNDhy43IfHutxHBj
	TIpAM2/ufzxc6RPbMK0X7NZu4uFz6rtgXSXGHqxm0jEGMMb7BvpZQ09XRUc3K9dF
	PfnRuWu3FGvrt9iD4SCawjNnQvPY7I4dazEhTub17g15pyoWI+wB8toIcxmWdLY6
	s3L0A676DvMNI8gJf85B3wCQiiyxFhNg4uj74+jHe78BJ+mm66qQAE51LW6Hsg4P
	2HorpL4g17CafVhlS5p+CuX6/6X2iID6ZIKN61NKGdGPgLKFrUwav9+HXftEetXZ
	WvqBOQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh84rv0s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:17:03 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so1763469a12.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773415023; x=1774019823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v3eFun+R7DEVcMmqGCgOvog+ta9UM0shehTjUam8d9o=;
        b=c6QxsaZGUVTSQdtY8+O/zqCaD3is7jwCOzy2pYmQS6i3FJoQHBaqRqEUaWx8xdd6iU
         /+WWo5FUr11yykjV4uh6usW8yj0wEMKHVviyDJW9Id+z/A/iem3UNNu2gzUjW4sjt98b
         6t7ZMOglGixoZKvd3hRPHF8CVZvNTMrXmBqNlEH+zaw/77dnELsUwZVIC+M/76DG0ieT
         xMuLjv2qaX5A3Z2Q628aXFMKkPvGsF2HkJKOHhGFmEfLh7PGZGQZisCKkenpARAc1mOM
         +4K6m1IZb/W/7lHaldD3Eh1+y/L+pAoAF3xTto/yYkGpbTgBy7hvR9RJtYu1X8ob2DW6
         MevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773415023; x=1774019823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v3eFun+R7DEVcMmqGCgOvog+ta9UM0shehTjUam8d9o=;
        b=fo7RjV0CXryJX+PPvdIR9ht4pBLUgfHKDNEHU3wlwAz8i22KUAo8cgnHiXM276f78s
         YuQuSV7IEtUZWsRLdtNk7oih2Z5NnMMnqEyIDQgjKldvDMYOEr+d8s94XtnTmdeujoHD
         1Ln8scVjUjd1+j57xspHyaV1mCXsB4+VIdJEnFhLkWINHEKU2GX+t4gDlguYqKmBVoTV
         Ay0/I84eTuhlB44FVTn/MM9hhJDrX3QKsOnpxNeSAdcQrttdaNOFnlof3I3EHJjyzoFS
         cCQF5zY9h4/X0gJTV2cZskXY1sBiYjR7A5HPjELdXFtkBMyq5qYBt9r/p7qu/+2R737U
         iqdg==
X-Forwarded-Encrypted: i=1; AJvYcCVsO8Wu6jSAr1UBgNrPRniq8+0vVnFj1xwBL+HvKuLuohbtRhfVipaeZ9Z9qYTHlyqF1NPS9Vd2rl32@vger.kernel.org
X-Gm-Message-State: AOJu0YyqkN9vy2b1Ge8AJn0qKPZXTtqFu5z70vYb2IuC9fPJemhIfo6C
	q1VR0mbdQswaYEBGiuUd6zD+IUylqiBlxwfu/ba87xa7JyaLiI0qc7MsrSPBpm1B5z+heov/IC7
	Rn2VaDe+uH1uTP2O6KEm4w5WTtwNsL26nDbqSDvvIcgdA+hH/Ibnfvm6dtyW96FYy
X-Gm-Gg: ATEYQzyUD9lSxDBtbJ6sU1INn2RJKQ0gDHelh6dUAPrxQLArBqE75JA37n+6s83tPf8
	qLAly42A1VtNkzWhkW/2dre76WMKVqb6SxHHtw/+j+sjmyIkDcwsbInnpgmexggC19CaVDCG8uN
	IbYNgrnD4mMhm1apYv21knK/8eECHCtXTkL42aHhsU57Nh2HZh/tWaSHiYQphCTy4bncDJteUbH
	IGBQNFFOcPBwzpCinMPCJtRT2Rx8bhZbUuTen01nxGdqD6hIOcluxWSxRyXcwC+62a1Qn6MWKVx
	djW0oMjTrzHJg2I/PJDztXfVYvnBpvrWuCYvANrRYxQCoJPb4f6S4ulmurbwQfuXnG8fp7buYWQ
	f4gmn5nJGlvkAqmbVTLyRhi7lAiGucWCu818/sPh0xCiYy//1H96mg0yO
X-Received: by 2002:a05:6a21:4cca:b0:398:71f2:59d5 with SMTP id adf61e73a8af0-398ecce998dmr3321267637.42.1773415022656;
        Fri, 13 Mar 2026 08:17:02 -0700 (PDT)
X-Received: by 2002:a05:6a21:4cca:b0:398:71f2:59d5 with SMTP id adf61e73a8af0-398ecce998dmr3321202637.42.1773415022008;
        Fri, 13 Mar 2026 08:17:02 -0700 (PDT)
Received: from [192.168.0.172] ([49.205.254.220])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73ebaa4338sm2047210a12.15.2026.03.13.08.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 08:17:00 -0700 (PDT)
Message-ID: <62027e78-4b7a-4b94-a51a-13a9ae77b722@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 20:46:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-1-9c0d1a67af4b@oss.qualcomm.com>
 <hfuqu5uwjuh4ie55zwaqqbsflhf5yn55hnjva356nivoq46m2i@o5pkjnfrwycq>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <hfuqu5uwjuh4ie55zwaqqbsflhf5yn55hnjva356nivoq46m2i@o5pkjnfrwycq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OMoqHCaB c=1 sm=1 tr=0 ts=69b42a6f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=EbT04XG53EGSLiegdi54Hw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=H73U6gjSJfwdDiR_EpgA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyMSBTYWx0ZWRfX6Pl74aX2wS2t
 BjkcfU571hfHYwN9Ptz85H6btu9hV1Ri40RNlPH6eJjBaUWYgX4N6L3GKB4lKhGKPyDnK1DNxef
 W78co+URIhwivY91fcV2Rw03KYkOZspICsh9IBuMnl1NwEpe6B0niOJGLRAi/1yLOjegHlqzco9
 pLUFpEtJgUAXq3c+BiDrgfJTOkSEIvb2vqFQHP7URtTVGuRl7wtrInz4ti9ED+f73DoK2tKrNK/
 g9hykWTeXnbvCg8YzqhJeuoWs21qoJugaqYsg7Gidf39Ab9FQlR+ZWDWOXEv7NNtnzVChDKMmMN
 oJRRCRvYinwzADuu4t2kGtdzMtl4JFVMQKqaElhrH1l6zSsvZKmsJV0DkIA2o250IJMo62fyiuW
 9qFh/6NKm2IecgCA4z3j66fxYobAb5XioyRbPcVDUeFq57YWaFJuVruiOQiGL8EvSvS4d83C0Dp
 ijBcYmjU4ddWwtTK6Tw==
X-Proofpoint-ORIG-GUID: sCXzjvzYwmhJt1Vz4UJFw5zlZrdhlJ1-
X-Proofpoint-GUID: sCXzjvzYwmhJt1Vz4UJFw5zlZrdhlJ1-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275358-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.30.132.128:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A0CEA286066
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 8:32 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 06:49:35PM +0530, Vikash Garodia wrote:
>> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
>> compared to previous generation, iris3x, it has,
>> - separate power domains for stream and pixel processing hardware blocks
>>    (bse and vpp).
>> - additional power domain for apv codec.
>> - power domains for individual pipes (VPPx).
>> - different clocks and reset lines.
>>
>> This patch depends on
>> https://github.com/devicetree-org/dt-schema/pull/184/changes/d341298d62805bc972dfba691da6b3b62aa3ff15
>>
>> Nacked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   .../bindings/media/qcom,kaanapali-iris.yaml        | 254 +++++++++++++++++++++
>>   include/dt-bindings/media/qcom,kaanapali-iris.h    |  18 ++
>>   2 files changed, 272 insertions(+)
> 
>> +
>> +    video-codec@2000000 {
>> +        compatible = "qcom,kaanapali-iris";
>> +        reg = <0x02000000 0xf0000>;
>> +
>> +        clocks = <&gcc_video_axi0_clk>,
>> +                 <&video_cc_mvs0c_clk>,
>> +                 <&video_cc_mvs0_clk>,
>> +                 <&gcc_video_axi1_clk>,
>> +                 <&video_cc_mvs0c_freerun_clk>,
>> +                 <&video_cc_mvs0_freerun_clk>,
>> +                 <&video_cc_mvs0b_clk>,
>> +                 <&video_cc_mvs0_vpp0_clk>,
>> +                 <&video_cc_mvs0_vpp1_clk>,
>> +                 <&video_cc_mvs0a_clk>;
>> +        clock-names = "iface",
>> +                      "core",
>> +                      "vcodec0_core",
>> +                      "iface1",
>> +                      "core_freerun",
>> +                      "vcodec0_core_freerun",
>> +                      "vcodec_bse",
>> +                      "vcodec_vpp0",
>> +                      "vcodec_vpp1",
>> +                      "vcodec_apv";
>> +
>> +        dma-coherent;
>> +
>> +        interconnects = <&gem_noc_master_appss_proc &config_noc_slave_venus_cfg>,
>> +                        <&mmss_noc_master_video_mvp &mc_virt_slave_ebi1>;
>> +        interconnect-names = "cpu-cfg",
>> +                             "video-mem";
>> +
>> +        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +        iommu-map = <IRIS_BITSTREAM &apps_smmu 0x1944 0x0 0x1>,
>> +                    <IRIS_NON_PIXEL &apps_smmu 0x1940 0x0 0x1>,
>> +                    <IRIS_NON_PIXEL &apps_smmu 0x1a20 0x0 0x1>,
> 
> It think we still haven't settled on letting iommu-map to have several
> entries for a single function.

I have described the hardware aspects in the discussion [1], if there is 
any alternate way to handle this, we can discuss in the same discussion.

[1] 
https://lore.kernel.org/all/21fda4d2-72e1-4e5b-aee0-a799886f53b7@oss.qualcomm.com/

> 
>> +                    <IRIS_PIXEL &apps_smmu 0x1943 0x0 0x1>,
>> +                    <IRIS_SECURE_BITSTREAM &apps_smmu 0x1946 0x0 0x1>,
>> +                    <IRIS_SECURE_NON_PIXEL &apps_smmu 0x1941 0x0 0x1>,
>> +                    <IRIS_SECURE_NON_PIXEL &apps_smmu 0x1a21 0x0 0x1>,
>> +                    <IRIS_SECURE_PIXEL &apps_smmu 0x1945 0x0 0x1>,
>> +                    <IRIS_FIRMWARE &apps_smmu 0x1a22 0x0 0x1>;
>> +
>> +        memory-region = <&video_mem>;
>> +
>> +        operating-points-v2 = <&iris_opp_table>;
>> +
>> +        power-domains = <&video_cc_mvs0c_gdsc>,
>> +                        <&video_cc_mvs0_gdsc>,
>> +                        <&rpmhpd RPMHPD_MXC>,
>> +                        <&rpmhpd RPMHPD_MMCX>,
>> +                        <&video_cc_mvs0_vpp0_gdsc>,
>> +                        <&video_cc_mvs0_vpp1_gdsc>,
>> +                        <&video_cc_mvs0a_gdsc>;
>> +        power-domain-names = "venus",
>> +                             "vcodec0",
>> +                             "mxc",
>> +                             "mmcx",
>> +                             "vpp0",
>> +                             "vpp1",
>> +                             "apv";
>> +
>> +        resets = <&gcc_video_axi0_clk_ares>,
>> +                 <&gcc_video_axi1_clk_ares>,
>> +                 <&video_cc_mvs0c_freerun_clk_ares>,
>> +                 <&video_cc_mvs0_freerun_clk_ares>;
>> +        reset-names = "bus0",
>> +                      "bus1",
>> +                      "core",
>> +                      "vcodec0_core";
>> +
>> +        iris_opp_table: opp-table {
>> +            compatible = "operating-points-v2";
>> +
>> +            opp-240000000 {
>> +                opp-hz = /bits/ 64 <240000000 240000000 240000000 360000000>;
>> +                required-opps = <&rpmhpd_opp_low_svs_d1>,
>> +                                <&rpmhpd_opp_low_svs_d1>;
> 
> It's a DT and not the schema question, but please cross-check the OPP
> points here. If I understand Taniya correctly, we should be using
> corners from the PLL type rather than from the video_cc clock plan (they
> differ for some reason). Downstream videocc driver also should have
> correct rail corners for the PLLs.
> 
>> +            };
>> +
> 


