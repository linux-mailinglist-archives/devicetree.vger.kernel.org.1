Return-Path: <devicetree+bounces-197614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F03C3B09F4C
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 11:23:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EBB15816F5
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5E129898D;
	Fri, 18 Jul 2025 09:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MMa3nh+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD94296150
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752830602; cv=none; b=PC7EC54SEZugWN2aL6Fhvl8VHxB3JtG16LXuVOlMInzY/3nKV1d7VGqtNmzZG9AMskbaWUv5DzFf1q83veyzpylAsUfLuT/vR36IyZfIhqiImxQT7st7faw4ugG2KiZbBohtiAJPjmgkLjQuFRVVr2mD40RF7h9IhM9GKPplO2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752830602; c=relaxed/simple;
	bh=RcdS4qXRNHqoIFtflPy8p6xxpU4RVnQO+PYcwJzQfzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UtX9gK7UGauOootCWpdWBSrt2i5R0l9uamhGunKOsWm9ZjjNFZwx13pU1LwUHu9a0iNfV5U379LUblOUGPYard/eIgICPEjhZO+SAN56DNQ8gdUKwDuLufbPuQFPudUjvprwzBGVEenCY1ycNJlLAPsP9AT0eaZ1TkubLQogMGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MMa3nh+j; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7u4v3015616
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:23:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R9tbdwW74cZEyqwu7Rui55/J0rnn4mTkIqlUTKDRA+4=; b=MMa3nh+jnbnhJj/n
	qLQLWRiB8S65cc2Ewc0lGtk7lveJn4/SBE3pbMdBizMtCXuUyixMc1OkNBN49KTg
	nZ2nREVccb8OVDQpqgK9wlOQzuN3Nf2BvQ0TRg0R2Rn2mBmRxSIcxhMhGzpisIjt
	nB7dKqeET01QFmvtrzYIznq9zZ9/ZCDczjvrnHLO++e8lONjZZP2sFNykCgKnMma
	Ixi2/NtSYvZAnKU14/XT7d6a7oQB+YWRG7OsJ+QTB8LVZC6euEmaZlwiWK1GiWc+
	mwLdpRPLgROVQm59wwns/lyozmb5pEi94KDrerDGy5uFiHm8xmxM5cuqN8dz7swz
	iY3WEg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyww33-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:23:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab716c33cdso7274941cf.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 02:23:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752830599; x=1753435399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R9tbdwW74cZEyqwu7Rui55/J0rnn4mTkIqlUTKDRA+4=;
        b=ko4Q26U2l5APH5SsItB/6hIfes4al0L3jX2NZoM2zv0M2w9nYfG9NN8Q038g56OR5a
         Fmc19rGgQuQ9w1Z1AAZRSunI9jYDU+rCR/7l0JzvnWIaTVcTaEvAn+WNNtFKCqvo0mtD
         PEPpAj4yd8qYBG8B/HD7UGAuIqHGlnDx4tGRVPc/b6mV7XvHpWfFbCTWfv5JY5DDYFvk
         JQrNFz4A+wwJaHe30hrKTyxc9id4GDRSXxzQ43qfUI1ZBGE/saiUn84sXsG6Lh/4xMOe
         9EVpM/mMvRSQmYEI6zC0emfV+OE/G1h8OWeAvpFL+ftL71MAoQ2n/y5TZRjFqYa/mFm2
         tW9g==
X-Forwarded-Encrypted: i=1; AJvYcCXruv8AbvYa9HLbVCXP9l2R+hqwvaHxoWSEintEXeM3WUckmmUEhbIkFp5X2iCoXZK9Z6BYKuDnNSTT@vger.kernel.org
X-Gm-Message-State: AOJu0YwMgigYSExgAld1dPKmm8ydZ2+zMTfihvVXqiEWd13gtL/e0R9W
	34RT4KjPYbr+ntiMQ5GZdwXMJqWvQecTqiW+oOHk7xzPgaTqnPT06sBt0y6AnmF5Kjhnd6W+1ED
	Z9/Ge8Mtql1K5ZU2R9StVGOINr73Dx3C1G4gZTae9Wqb05hJI0ocAaz7VN4OG+ieN
X-Gm-Gg: ASbGncta6zyYdbhJTMEDcPVyIm4DHhwtSRq36HGD/pciMwMeuazNtKU3/9kwtT20+a9
	fUVxJ2mzN19I0zdsmXmnzMTqpzgxvze4HGN7Cona3bKmKlh7kIBZFmIU3Od9ltc84LE6KUHHGQd
	jRfapy5yqKuopoFY/f7j+IwFkkU1PIwFvERb61EOugxF+tuvpB+qP/FKjMy9JlXPdxalV/8KEm8
	93NH8QTL6STbmQhKSpPugIpDAY0hF52J0RgxR0nFPcEKVaDLSg0ZzhVGn36UHK5FcuPJ6cbxKVk
	6BOB5SvuDKV2wHDpaPjsFN1G9pK8ns+ubXeUhDjJp3AVQ5nIHHf4hqyXdcIOBoKN1j3lfQ8RBlK
	BWWCTGAa+k5TK1aJ2CZAH
X-Received: by 2002:a05:620a:27d2:b0:7e2:1609:a19a with SMTP id af79cd13be357-7e342aeef45mr582360985a.8.1752830599201;
        Fri, 18 Jul 2025 02:23:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp5OpRRRlubBf4j3XB9hMRhuiSC9XEu5aCviHEU07bToJoCBMGtr/bqJyK9a710HZLckzjkg==
X-Received: by 2002:a05:620a:27d2:b0:7e2:1609:a19a with SMTP id af79cd13be357-7e342aeef45mr582357585a.8.1752830598696;
        Fri, 18 Jul 2025 02:23:18 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c7d9941sm87211666b.56.2025.07.18.02.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 02:23:17 -0700 (PDT)
Message-ID: <17ea4f08-daf0-406c-8760-23a23417ec1f@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 11:23:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add MST pixel streams for
 displayport
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov
 <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250717-dp_mst_bindings-v3-5-72ce08285703@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250717-dp_mst_bindings-v3-5-72ce08285703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Mr4B6cleTUYX0jRlI7lbUBViUp55JPyC
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687a1288 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=biz6BXDC6RXR6m6nPMoA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA3MyBTYWx0ZWRfXy742HqW7sQlt
 bB9YmvqQl6i+4YdX46qvQkXLHZT6jpjE6MAXAq05Z7m2OuZ23tzIf0WcazMDV9pg7O9pfjL/uS3
 IOAmKMX8FyGp2aA+U/+HdfUigAaoDJevc12Hub5OjhIuy1RianWDWJo0oYyeVuf6uVSBS/BmcAz
 IPiUrDcp7I1dkpnNdlQD3LEmSKyGrojFNRS2e99Pwm8Qcf8W5ZpgDkRZwyMPWXdsmH4yj8ehSu/
 TpL7VKFS2REZ6j+X5PeRBwHrCVEZuKrsDUSVGe7TsWbxVqYujIkMRnz/TmqUKjt1HSSZIe5B6hy
 WRgy8hC1QQL71vHuvpKJ2NZniUAzMT7FUP2LQP5hv9TF7w1w4yBDYpthBqhAVDG60xPvRdCosRF
 CIpb67Mh3jRCXahEOVeEnDNiZ7Ccve8TcLP/5sP5FmjmcmO1YGuorCMsDL0vswsPhrNEYNOy
X-Proofpoint-GUID: Mr4B6cleTUYX0jRlI7lbUBViUp55JPyC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=551
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180073

On 7/18/25 1:28 AM, Jessica Zhang wrote:
> The following chipsets support 2 total pixel streams:
>   - sa8775p (on mdss_dp1)
>   - sc8180x
>   - sc8280xp (mdss_dp0-2 only)
>   - sm8150
>   - sm8350

I think 8250 can do 2 streams too, no?

sdm845/sm7150 also have the clocks for it FWIW, but that doesn't
necessarily mean they're consumed

Konrad

