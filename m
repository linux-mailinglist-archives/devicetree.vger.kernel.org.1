Return-Path: <devicetree+bounces-273580-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJV7FkkrsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273580-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:31:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 036B125205A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:31:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69231345C49B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F00A399379;
	Tue, 10 Mar 2026 14:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OqgTRfR/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y+hnHqHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4343B399354
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151969; cv=none; b=VzOflMDM3005D21GH20LS8+Tos2WNyFXm1i+o5IX2Z0IX/yG8pCOJ2wdnxNGlraPyTGLpodmvFjcyDlDBLdympZednrTeyFlmyiuJbbCrdTdjfLxIRQYoJ2sMVVnHS6sN/rzsYqSCbdHfpQ5PMX8tdrcbOlV6Mpdj+O58ivQEJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151969; c=relaxed/simple;
	bh=+KTIjkL1fMUsF5C+Uy7fi7NsEQceepC8CV8GyeY1hM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g7FM+c8CXiZpE/WpF88UCxYpC6AQRp5ZJIK/cLwFViXYNajaBfoxmCFX3pjFp02i5ZFXEQYbXDvIctDSJ/z5ziH32ra2DnwAw7nmKumkhcwrpxZL4M+6ERiz9DMixFP7CDPrYCLnzSturV7SYdHLNWGNwd2r5662HDvAnYnez38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OqgTRfR/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y+hnHqHM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaqaq1647996
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1zGTVzhjGLlYOLvxeBLSV0gDnAHmqo3DY4rcCyXMpks=; b=OqgTRfR/0T6/z5C9
	VlpDxWx7rtN0WpQsOHfrJzUMws9TFQu/xeKLrKACd/HJWMmI9otyRNyANCroT16G
	ZXNxHu1/9WFVdfCE/Q/Nq2tSu6XIqOzjybFxwGxRSY1W+dgIZNafFFQehgmvERd4
	iccHdSR1jfCclo8b0+BKbF+WWE0bcmA/DqK3ySZI7WSCo3LaU1egqv1RRlrW5TVg
	b5b/rKcDlpr6hMhkLXJRkqmBMVzH2VDJHwEq8Js3fmMnMahYdUVt1z5YIqI9q6QS
	Z8JvJ9qWX7bA4bpA6E9Loh/lDHPxAZ8cZmcFoB3ynQU8TnbQZkL1bbSOUWDW81z9
	Afamzg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ct8802uqg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:12:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd97debc51so39139785a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773151967; x=1773756767; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1zGTVzhjGLlYOLvxeBLSV0gDnAHmqo3DY4rcCyXMpks=;
        b=Y+hnHqHM7REPn2R5Q+2PcgDaRSB+jFW2fcyJedK7z2545mACcvgB/GTay9XcuHnMlk
         02KgTiszbWlAZ4krenedVVJ0aYbEXJIJLlFiYT2NSmURVtd0A/IizAD5G9NpLKNts02r
         W7md5ygp2k8KUW/uOF0kzy4/8e4THznAlnC0RRgFI0CfKpnKIap3zZSTyvcag5ol/Yp3
         33ooOMcXCl03dE7Sq5jUaME0ZgaWJ8o4s3uRRBogUg7A/cSTNO6J4mYxdiqbzoeG7DMq
         DV7790gRGK/yyjzLcU7kvpjN4s+Fd3VajrQ21lovvCN3kBPncJ8o33I4TwnMLvfHisuP
         s+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151967; x=1773756767;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1zGTVzhjGLlYOLvxeBLSV0gDnAHmqo3DY4rcCyXMpks=;
        b=CThJwtEBWvP7SwaCUahe2Qdd4+y+b9GWSaCSrOC90f6/39BzKMmANcbeQf7NZSSOyv
         d1wJ8sEjhuWSAMtmadQRWzj+Q6B3eLg0TDgSKGGjYWccwnx2LHUCgiPQS/Dc98QQkv2T
         GXBQjUFeyWHxQ7k8QbAaApTXhhenS7EmnJAobC4mOYhtuTrD5Xl1skIottcV4CRiG9jn
         H0dv5ttbdGetcVhci/VUnhDEpuBYJ8DEso2rvLLljbu3DIffR2fzTO7ZqWxpqfpOOAXD
         d4Uw2+UNNrFpQYnzgvKKIr9nNmSwR7kk/6gNx52DWrtJuUMndPjSAICe91GcVEKMJMDK
         BFVg==
X-Forwarded-Encrypted: i=1; AJvYcCULUebofcBAq9rqb3e98S7+Mzn5sr09Vc907ukwSAdn1RUb9xI1Vw2Hv63rDMEPUB0N0rI9EkVNnFY1@vger.kernel.org
X-Gm-Message-State: AOJu0YymYJKglmGrTPMpOfCfLJuCg3wUeiwg2kOqhLmIir+ljoiWAbRh
	Oy6CId6MSWYtJJ0uu95pkgN0j3WRQsqGJhopLWhbXKN3IVptc8XfrCPPBr2xo+hgNnwubd0KcnV
	ChUN2z3WQ6346OpuipXcI3+yzkOa5hlahQCbxutMKWTV56SJ8KKZFHiXOc+1ef0jE
X-Gm-Gg: ATEYQzw4HlDQCRSV75yI3iy+vYMWt60Zap/Uy4L8xcdQnvtY0eT+HL3IAQuYtt5ClhW
	ASofuFhk3Y1GzZ1bR6dPotWyIVyREJIhDLgFjJS1EuygA9NXQOyGKnDn4EzrS7YnYoAXv5Nj4AB
	Cjq2WztU2JjeJl/9Kpf3dxKwxt/x2YOmm3SgDy2pPFkFxmZueGu5pBmSNMvG9z0S+tkh/NszJf/
	+9Xv246Vc+aux+wBHQP8uXuf+/mRCFPJPh3FFsYJuinqRtmHhV/xdijk7gzqDWMTF0L82zXl8aT
	/aoqPxwbLwbn09+H51nju3OYh2ko2TO6bH/EG7/bZIpiqvGTDiJZoCo9Qtn8JjUfUzPMh9q3AJS
	jUnIWGN9i19v/X0EUZPztH1Q5kKFQGA0183UVHS2DUGIklyf8Tel/aDBWk4bmOEMkojUM1rTcaJ
	XCnTI=
X-Received: by 2002:a05:620a:45a0:b0:8cd:8d50:16a0 with SMTP id af79cd13be357-8cd8d501f65mr623703185a.3.1773151966629;
        Tue, 10 Mar 2026 07:12:46 -0700 (PDT)
X-Received: by 2002:a05:620a:45a0:b0:8cd:8d50:16a0 with SMTP id af79cd13be357-8cd8d501f65mr623696185a.3.1773151966085;
        Tue, 10 Mar 2026 07:12:46 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a3c66d3fsm4317323a12.2.2026.03.10.07.12.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:12:45 -0700 (PDT)
Message-ID: <b27a3e14-60fd-45e0-b33a-16b53c4d8593@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 15:12:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/11] arm64: dts: qcom: sc7180: Add power-domain and
 iface clk for ice node
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-5-b9c2a5471d9e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260310-qcom_ice_power_and_clk_vote-v2-5-b9c2a5471d9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDEyNCBTYWx0ZWRfX6tB3tDm5ozbr
 /6KrjjHC9HGHiOihgCs77vPpopfg9QKo1BuZHOW7aZvrq5u28hSzeGVPtYo7LsVI7NWtS7vINzf
 Yvj9Xh7bt12Un0CsPIuPpIdsZ2GJMGZNJw/yt3Kol2u9htwGmEDNb+1YkhmUPJ2h0RF/891Dqcl
 YQBqX7qVgyoDzhllynAM/dsyyenUyjxU7XWtu16yvEDTKlL8LMuUWW5pYOTz1SbyYqLI4eLKAGG
 366dR0hwnAnar6Btav4D6JAMAwm5KG8prPsdxZp5ZTMGL9yZG4aYDq7a5rgq1jN2HhO66gGJc0w
 zpX6QRALfz/STELeK4Zyf4KWOXWcHECUEgdSTfXyi5PnqJ2FtHf/A/3f/L2my6xLhVFy7eYbFVp
 ovZojU851EMQ48ekvYodGPOqxRRCmi5qq0enz3j+ErHXn5u2ufw9rlIEs5VyAyKve9z7fgVYv1+
 azVZV15vsqLzmU/SMag==
X-Proofpoint-GUID: b5rn9BXYU7WTlYKWH4_FrYS_XEaYFj-t
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=69b026df cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=z_dnvKGLtVwtNw_c-ccA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: b5rn9BXYU7WTlYKWH4_FrYS_XEaYFj-t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100124
X-Rspamd-Queue-Id: 036B125205A
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
	TAGGED_FROM(0.00)[bounces-273580-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
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
X-Rspamd-Action: no action

On 3/10/26 9:06 AM, Harshal Dev wrote:
> Qualcomm in-line crypto engine (ICE) platform driver specifies and votes
> for its own resources. Before accessing ICE hardware during probe, to
> avoid potential unclocked register access issues (when clk_ignore_unused
> is not passed on the kernel command line), in addition to the 'core' clock
> the 'iface' clock should also be turned on by the driver. This can only be
> done if the UFS_PHY_GDSC power domain is enabled. Specify both the
> UFS_PHY_GDSC power domain and the 'iface' clock in the ICE node for sc7180.
> 
> Fixes: 858536d9dc946 ("arm64: dts: qcom: sc7180: Add UFS nodes")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

