Return-Path: <devicetree+bounces-248987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE721CD8456
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 07:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E383D3017F32
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CBD301719;
	Tue, 23 Dec 2025 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IWQYvbv6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A8JCgHYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA352FFDFC
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766471913; cv=none; b=m/WOZh/SkpUilZWCdcQHsfen3c4IVwQBccA058B70nunKJ6furFABrHNwItLLSf4MDs5Qs4TYTAHwOYO7KjreYhii3oaX2vtWvVygXbdRYG+9kuaXwrFMSEBDzDb6bNM9y6wE7IeWPRKN1sElkCBEJYB0enazMEBn30fbBWzUbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766471913; c=relaxed/simple;
	bh=uW4w+QJrEnv7Q6yTXfhLGPNGnruPOuDl5vmFKBo81lg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GpQ7eDd6S97IgxGbWTjCCHeJY3cuvsYXBBcbXqEGSB1Y3OYzDPoUtJCLayi2oxDHvyAk5C174Znry+OXOBl4ft8t6as3KImIy4dcgpJbGThTF7HgpAOxnxemqmYoQMs6l2CPiczD4vA6nu0FK65c1HwhlzmbqvPNfJ/+kYVo+wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IWQYvbv6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A8JCgHYO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN34eiK1894808
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SGfF6MiAYM+uTFbBjym3gHP0hxSqhDmj8ARoso+NK4s=; b=IWQYvbv6o2QuGLR6
	KdtFGX7vH236h4LxPGdFx/zArX75MJBNgmjmsHbafyyMyZvOc6AbeQT/3ugtnQqY
	W5gyuBvwMht6vorZhz8BTGxr8uLn0WjIJf5ycEw32cpDbRzCYgewfIpxAwU9Df5p
	MvdkiNDe1uSmw4AdwePD/Ra3TFRG/eCYi/e0bY0J39OuWz3WcR06qu2Tp0aC9qdu
	xmC96RNAKUMJWJa/OrWwWDnyp80zxzHbNaNzKVAQHCBe645KeILqysjlr4NsGvhU
	6ICOTSsA36G+PiMA4uFMWYwyK0iKS4kDb/hVFT13iYGBiG5XAcBMzGbKJetANtzu
	9fRceA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b74tajt0k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:38:30 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0c495fc7aso68791035ad.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 22:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766471909; x=1767076709; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SGfF6MiAYM+uTFbBjym3gHP0hxSqhDmj8ARoso+NK4s=;
        b=A8JCgHYOViXMTgukIfiXxRFngWNKVg9eaq3CFWn9sSpeHbsAGL4bVS1z2FC3izT0NN
         U5fKySDkeJItWrqyQ13z4IvHCE0Cq3ixATQJdMwZKfbYT0wOEv5zfVsTZ1OtmHfpAVV6
         kFBIEVtgc5/eQx/kh0e+usp1pyqiZiYsFMv0adm5cLnti8wO3uaG+Y6RiDRp70CkBrye
         GFRD3CbRxQrRlIAguMyB29Oato1xhuNgdOppDGsEB+1+PuXyfsj4EcEMGHokT67OYNvF
         THyQiKF4zTMnmXf6tcdwKrvAs7VwGN3EEh7as8C9F/MhEA5aRkd4B1oisQhsb8hbcwx+
         LWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766471909; x=1767076709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SGfF6MiAYM+uTFbBjym3gHP0hxSqhDmj8ARoso+NK4s=;
        b=Yx5bza6ZM4BLKCyPhHY9Zc8CwpBoJrjjKu6Fh9QBGoMJeV6nUovLsNoltEIYMb/gOS
         tcx5RljPx558dDoF5lepCj0kSTY7xWv/FuhY5Zxbsa9IGnY1oDIR2Vhu1OCy6gnSxFQu
         AmWoVmbqUtXMzkHI6XHEdK6CY1f15ji6Gh9q0956P3x2gxZP9k35fSxDpXembq7Tuslg
         X9w5WOfopy5qsiA7g0MJDoousLuU2x1u5mblzE/13/Blh7Kcfv4oS/TnCYfcNtjuoYrn
         X/NWTF9TwmdERLs4H0j69/er//vypODt1NFemk6XiJUjJuCKbXmEG1hAKgEmL4NF3I3D
         k/gg==
X-Forwarded-Encrypted: i=1; AJvYcCUgeRBH4Nz9cbeRJiu65Od9wBvMaSHJuHeLyybRvaUVTd8nPoW+PY6cY7B/jO7pilc5k60QU1XPptgp@vger.kernel.org
X-Gm-Message-State: AOJu0YwOOyxEtRkWfmwhmUNFhIDnSAJOe0KcsKQZTP6dQ6n9mFNfH9aG
	BUinEz6FmRH8DuVHIFwZifPay0/oUw1Mjt1s1xYLm8ninTV6wpcd0is2N/+hJXZ46DQLqfYGtDY
	1yKaZKmWsyYCcGFVPuyQNeII1Lg9vmM649kNMRtirqZl1M+X9NN75KDBCG9j9U7tN
X-Gm-Gg: AY/fxX42t/3gi4CIAiirRxbi7I2wdLXadgI8aNI/+TKDrYrOfhD5gBJPxGhCX+WQIUx
	ro3WFFCq9Pl4tGjXPgahR7okdllh+F62iCRUS3kyZJSNvhqAp5XhggbJ0d3l4l54IDC7pzocCED
	FrDPYsy7uSTEHTpPtoOBXDofe6/pZ2Rs73V0Ceeefja6dN4JzFGVLpe8uSAZNxwTXjpk24YbFIv
	8/rqNhnGx0HxNma0L4LcHied7HQt5KsTxthdlT1OQAzJ7PWFMoNWxjo4WpO0q65gmgadM6Fnl/p
	Wpd6MeNM0A9eEzf4NSjBcOVkITj9+VT1y+DfbA1hdd0FmMCw5SwFChYeLj0Qts8rLFylma0ksXx
	sCgae7QG8IcbwXQnY6oV9u4yV32Rqg4awNVDBcuE+hpiqNom9v5bbnckRPiNxWiqjIc/LkL0gQ2
	nTF8xOuw==
X-Received: by 2002:a17:903:2308:b0:298:1013:9d11 with SMTP id d9443c01a7336-2a2f283b5c4mr125136615ad.43.1766471908695;
        Mon, 22 Dec 2025 22:38:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH93yqRyuVGpx4KdUKz1id1O48goghnQrUvi+7PXD0BfJO8Y445ooJwwM4asvCsSOmONVOhIw==
X-Received: by 2002:a17:903:2308:b0:298:1013:9d11 with SMTP id d9443c01a7336-2a2f283b5c4mr125136535ad.43.1766471908154;
        Mon, 22 Dec 2025 22:38:28 -0800 (PST)
Received: from [10.133.33.229] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66829sm117984885ad.10.2025.12.22.22.38.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 22:38:27 -0800 (PST)
Message-ID: <1e7a7ff3-6f5c-4437-835f-5b5d4a05032c@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 14:38:20 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/2] Enable DPU and Display Port for Qualcomm
 QCS8300-ride platform
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
Content-Language: en-US
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
In-Reply-To: <20251117-dts_qcs8300-v7-0-bf42d39e7828@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DPiCIiNb c=1 sm=1 tr=0 ts=694a38e6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=n2RjsMndgCGXELCLl8sA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: iPhqzAY593DD-Oi2Cj_H4JF3dW72qs28
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA1NCBTYWx0ZWRfX69j6mOV5yl6N
 wiEp3N7GYR3MqJGI3UnjpnqQNkxQebhSXrGj+m/IA0TKfUTLUPw+2DWQ5QFCmG9xctj6m8nHc7R
 JX4eMWeRI79xppEWmetMDYTBz9GRrnCnEBa+/QrTwB4xtXZKUIJ5W1xici0Sv8tKX6skTjMsl8L
 wkcddl7+H4EJVFxSypu6xTVu2JJdKcSIj9AAKWrvaIf0KKQd9TY1L6/6FDn3JMqeZYqjoa5A7Td
 BhpJf5edeijzZuGZYRI1mwXwipwkdP3PfEgWVGK2VABYHEt7ZDQc9gY1qnMgE+DnwfpPuQ7aasi
 buJ/6wAQLrQtQ5WPuaEFJAEGZI8xoEvUr7rPOpiYrrDQZNOe3l8DcUUTQzYHaLEboe8EZMMzvft
 0ME5s+YSEX4x/pg4gSwOD66jNdwP3V6UVSiNlNdOEkANGdi6ynwnNEgPc/COzvdawaUCjkHJiyH
 U90YV+L+iiQ2yM964Tg==
X-Proofpoint-ORIG-GUID: iPhqzAY593DD-Oi2Cj_H4JF3dW72qs28
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230054



On 11/17/2025 2:49 PM, Yongxing Mou wrote:
> This series adds the MDSS, DPU and DPTX0 node on Qualcomm QCS8300 SoC.
> It also enables Display Port on Qualcomm QCS8300-ride platform.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> This series make top of:
> https://lore.kernel.org/all/20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com/
> which has been merged into msm-next, but has not yet appeared in linux-next, list here for reference.
> ---
> Changes in v7:
> - Repost after dependencies were accepted and rebase to latest linux-next.
> - Link to v6: https://lore.kernel.org/r/20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com
> 
> Changes in v6: Fixed comments from Dmitry.
> - Rebase to latest linux-next and remove merged dependencies.
> - Modify DP controller compatable to use fallback.
> - Link to v5: https://lore.kernel.org/r/20250806-dts_qcs8300-v5-0-60c554ec3974@quicinc.com
> 
> Changes in v5: Fixed review comments from Konrad.
> - Use interrupts-extended to introduce interruptions.
> - Sort the dp_hot_plug_det node by pin number.
> - Link to v4: https://lore.kernel.org/r/20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com
> 
> Changes in v4:Fixed review comments from Krzysztof.
> - Add the 4 pixel stream register regions and the correspondings clocks of the DP controller.
> - Change DP controlller compatible to qcs8300-dp.
> - Rebase to next-20250717.
> - Link to v3: https://lore.kernel.org/r/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com
> 
> Changes in v3:Fixed review comments from Konrad, Dmitry.
> - Correct the Power-domain for DP PHY should be
>    RPMHPD_MX.[Dmitry][Konrad]
> - Correct the interconnects path for mdp and align the property order
>    with x1e80100.dtsi.[Konrad]
> - Rebase the patch to latest code base and update the dependencies in
>    the cover letter.
> - Link to v2: https://lore.kernel.org/r/20241226-dts_qcs8300-v2-0-ec8d4fb65cba@quicinc.com
> 
> Changes in v2:Fixed review comments from Konrad, Dmitry and Krzysztof.
> - Reuse eDP PHY and DPU of SA8775 Platform.[Dmitry][Krzysztof]
> - Reuse DisplayPort controller of SM8650.[Dmitry]
> - Correct the regs length, format issues and power-domains.[Konrad]
> - Integrate the dt changes of DPU and DP together.
> - Link to v1: https://lore.kernel.org/all/20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com/
> ~
> 
> ---
> Yongxing Mou (2):
>        arm64: dts: qcom: qcs8300: add display dt nodes for MDSS, DPU, DisplayPort and eDP PHY
>        arm64: dts: qcom: qcs8300-ride: Enable Display Port
> 
>   arch/arm64/boot/dts/qcom/monaco.dtsi      | 220 +++++++++++++++++++++++++++++-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts |  42 ++++++
>   2 files changed, 261 insertions(+), 1 deletion(-)
> ---
> base-commit: 0f2995693867bfb26197b117cd55624ddc57582f
> change-id: 20251117-dts_qcs8300-c98a8592d4f8
> prerequisite-message-id: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
> prerequisite-patch-id: 59af38ff68afe283dccd4295951153e59e512bfc
> prerequisite-patch-id: 05fc429deb58c4aadd82f7d0d714af7d34d8399e
> prerequisite-patch-id: 52ee61224c7589b2122799998a8e99829d06eb47
> prerequisite-patch-id: f664581f48278298bc3501eecf637d1eb16dbf9e
> prerequisite-patch-id: 465ab53516efbbe38f85409e7ccb3793b05402c6
> 
> Best regards,
Just a friendly reminder.The dt-binding patch has applied to msm-next tree.

