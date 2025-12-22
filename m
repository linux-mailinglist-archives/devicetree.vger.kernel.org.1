Return-Path: <devicetree+bounces-248728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5912CD549C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E348830052DA
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EADA30FF2F;
	Mon, 22 Dec 2025 09:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o54YCYNT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AsWOthE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A2D3090CC
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395129; cv=none; b=VshQQba7XRlLdzc00i03cb2bO8maA6Fp+d03uZzepkxtyslgtgf2W5uhOW5CWrUIwedgmKZi1jinz7uZRFzgNjVRPzkpxnt6jba6uG5QhuB5rmkX0NwNQ0Z2RvFMM+ab+VQ6QpjgGmYSnqKI+CdzKVen+nnPhEC4StWt0JQFYVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395129; c=relaxed/simple;
	bh=1d/JAVwzlA/+9tYBi+g1Hro2TR6qpmAEWyjI6DD025E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DzVewnLk3u6J6npoVLI0QKCcNhm/1uhGVLBOr4OuHh44bMy8pEM9HIOsPR/RjzBOswJFX/nod79uSM+hWc+0k20b41M4A+rctSvAPhA+2gGpFZtYQM6fI1mTtnmYAM9jafWwQyF8tPKKwDIG/pqqMNZYuER79hiAnN6LHnfgc58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o54YCYNT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AsWOthE5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8PHwj3808462
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RAvA3mZeZ2Q0GgdO+s33U41pWzM3V2aBju0glgF8spI=; b=o54YCYNTx0UU/kYD
	z5e8DdKACNzzScV1LgaditU+lnOH4Ou5Vg/4ElMR3KCYVUsL1RTSPFqDyt5QK0bd
	jSPqiyENlCD62517Zlnjm5gCBo8+jnELUQ1J4q5q/YNWOr4XM3HLFnpYWkufCVVc
	veJg57goy8kWdVJvIsE5ah7e4x6VtQLnke0IkbOLYI6EIoLR7BRQlS3lNt+wtlvw
	tufaD53RA50bkEb4E2UvZ5YieBtfe2c/w5x51f0fDlkP7jnYL1m++l4/ej47yX/u
	evj8H6/HZ93GdcUFAXqMyO8k6r1KdoK5C0Zxtj2GUh2a0QcNc8EFmzdYE4DqtuMa
	XmIvAw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru4f3h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b2ea2b51cfso110295485a.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395126; x=1766999926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RAvA3mZeZ2Q0GgdO+s33U41pWzM3V2aBju0glgF8spI=;
        b=AsWOthE5/qTN0RcTW6WB53W8mV3h3f/0sRhum3EWSHiaYsggYi+vGDzuNYNhJR47qR
         tGSu3BO9YY5oN98VkUYdV7sCOaKCVdA+EAfFZWf2aBQ/+DYXz9yzH0sJtiLgtY7msaIz
         4sCxp6aiiAprYP8UIyVZqU73D3iC+zTC+OzJfLwPn8C8XjowbeKY/ZXMqmU3yodrUGcB
         SMCnPrRcdNAY9mzjYg2v3Epyx+jeW37uQ0zqiJxdTEzp7oTzCq6+sfPSqC8MOGB5epy8
         8jI+hskMxNr2iWDuUrrIIcw6QhabDS47h5Aeus21UGsK/Lx07XI35EZl1TnU6jUbvokO
         I4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395126; x=1766999926;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RAvA3mZeZ2Q0GgdO+s33U41pWzM3V2aBju0glgF8spI=;
        b=K5xhVP9SMYtT4/CI0AyCWGKGUhM7fSg+n6VwpCLD8xjvgr54ZtF6PsGMt2mm4N1xfL
         6Cffk1lXnGriYAs+w85Le+qyzwI4BqQxt6nFASACEGwJknLjymUuwXJjxohGmC9pXFn/
         cW4XOJwanShmIR3UhtTgjiHDi1wQSPqCkb178SDP/kyrcrYV1EKH2rsx4GsU0SithLjV
         vIJTnJCPt9a+Ut5vWRNl/bLh1UGUoKHTuHiUEuHGWtw00OVOMVSpzbb7WkomOZjB8Jvx
         SR/Ka6yx029lj9rDsjNOM0CY3JqNDOJTimq5Llur/8AQLOiOpXqxV6xIbGDyH5imV7fr
         s9EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBvBPaiwN14X8fa7Gwr73ofnFJ6sxO6XIuAXpK2/TGuYg6RurmKrPYuT/Xry95vysbIK8Zs/llK16A@vger.kernel.org
X-Gm-Message-State: AOJu0YyFnuaqOhNQVsFqLb9quVK3LoxbEbsPCnlIpxkvUKDe084UX/zt
	vPEO8/744AzAQU0KkkADXD5I+AFibwj/VuYpsgUHwSdH731w8er3eJHuIeoPGVHW36vbgC7j+kk
	ta/n/XNpO1fF+MdhFOO+FsDsWxZpnFGijgv5CI5ttPq4kauGh9MAIW0wp/cHq6JlD
X-Gm-Gg: AY/fxX4DFOeBo51MVF08mujwsEB8+J+wWSBU54GZUxweePT06dbDPuK2KpMd/VFeI3G
	yaKaLY42cRLCMEzFnQjSTGOgcMvChOmdxcIQifAkAo2PmRt85BivRwf8qZ3AsRvFqzOG9pbkXzE
	ndaVfObbQQlGXRdoheDZk+93gV1kNDYmdMyXj8RpHsB2zY+/IB6tSC1224EUbtZ1sOwJKxc/hgW
	G1Bab9Ke3RHpR6zsjltsleW8lh/l9b11eQZHTfJ4Y2p44iHPPMhuqccMxoBZinMcYEPqI8+K94v
	kI/93BKW4n4NgU+jCqSCvSFMID/AAWFwrN9PUSvlWAii57RWwwz+sSHAzdD31GDUy4tP1BldO5W
	ZpM31PjnlmGZYgHc+e+RhZFWLbWyyjSsgZDVJhm1sJlUoMLDgf+Go4QPKIlMxl3jkLw==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr119858581cf.8.1766395125897;
        Mon, 22 Dec 2025 01:18:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzz7ND2Qg9PP/UI3m9HQXYVf/0AKYGPMsstozA6wVCxvhjMvxQRErpso0zoeIbFSYwX0JS4w==
X-Received: by 2002:ac8:5744:0:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4f4abdcbf88mr119858321cf.8.1766395125476;
        Mon, 22 Dec 2025 01:18:45 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8056ff4925sm588823466b.31.2025.12.22.01.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:18:45 -0800 (PST)
Message-ID: <42277e53-b159-435a-bc76-5aabfc00eaae@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 10:18:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 5/6] arm64: dts: qcom: milos: Add MDSS
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-5-4537a916bdf9@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-milos-mdss-v1-5-4537a916bdf9@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX+avLgQw8SANv
 HjreVEyKppD+YQBWn1ANaJkN24xbWibtIYI/mikrZSPhsW2KqBH7d2fdg9kF6OqlwqRZAD/xVEs
 02zLUPbSbru4dn4LSXH+lmfO19gLRXKVutN2wTtBRHfhmtYpjchfP0bEPFEg5GSr2x5iJCuC5Zw
 Inhe8348rO/L9Hya+Me0Y/a1XNZ2GabywmcHT1SQPeQl6Qn07jdSRgaMLiCUWCriNvdkfZpBvpl
 YORyLLLhQD9EhG4MsXN2f/OhkitWpfvslWNeV7YrIsvjDEx1sQngynwo9FQf2364O/PmNQJDTlt
 cVORNmLrZryPwBpXcBt79+Th4uOrWcjnQUuxTuOfsr3EGrk+D2mZb+qnpICMOtzeT3nyujnrUAy
 ph1SJZqjZDtqfNxlXXptTpiSfNm1l1A/7LJ6BpAKH0r17HiTtVGZ4RZ3CXWvCtESHtL7ECGGRxY
 vdb8nPruPQ6bFDsLEzg==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=69490cf6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=ejjXnbaoI3aoak-AvoAA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 7F4SJzlXcQIDPzZUaCa8jdQFW7anw0PY
X-Proofpoint-GUID: 7F4SJzlXcQIDPzZUaCa8jdQFW7anw0PY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083

On 12/19/25 5:41 PM, Luca Weiss wrote:
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Please include a commit message for the follow-up submission

[...]

> +			mdss_mdp: display-controller@ae01000 {
> +				compatible = "qcom,milos-dpu";
> +				reg = <0x0 0x0ae01000 0x0 0x8f000>,
> +				      <0x0 0x0aeb0000 0x0 0x2008>;

len=0x3000

[...]

> +			mdss_dsi0: dsi@ae94000 {
> +				compatible = "qcom,milos-dsi-ctrl", "qcom,mdss-dsi-ctrl";
> +				reg = <0x0 0x0ae94000 0x0 0x400>;

len=0x1000

[...]

> +			mdss_dsi0_phy: phy@ae95000 {
> +				compatible = "qcom,milos-dsi-phy-4nm";
> +				reg = <0x0 0x0ae95000 0x0 0x200>,
> +				      <0x0 0x0ae95200 0x0 0x280>,

0x300

Other things look good!

Konrad

