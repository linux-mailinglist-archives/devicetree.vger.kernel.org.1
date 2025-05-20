Return-Path: <devicetree+bounces-178998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D2BABE46E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 22:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6C311BC398F
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 20:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F76F284B38;
	Tue, 20 May 2025 20:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TrXcPbEO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FEC284B4B
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747771428; cv=none; b=a0y4wUJvTHrbRCUl33LbMLh0KiKklzEtyezeOxu/Dgl9mf5RmQUU2BKh43Z4E04v+CdHxc+hai9uDfl64tufTmfTmioi9E3hj80QQlF9I+YW0PGUNSrtYn8Zh9lDyUbcCAiaTUCKLeUipAAkyOaDMMersZ+cYT63hK4hU6/ELPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747771428; c=relaxed/simple;
	bh=Jo58uY/+5x29BKtnLD8ifhHMZfOyVH/5wLfRg+pPINw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jC2gA0z4aOCrmkRK6S6azI5C+CDJKFgXffzVyf9Rbe0//b/l+XS8/AXXY6DMF/NMONTJclbexAwGxZD28IRgFoArS27BOECAmGz1jtTgNfxFICXAP9K2x5Y9WlQg8Bh8b7zS/huGPCOB358tc7R5ektqd/OuS4w1KYnvTFcdj1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TrXcPbEO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGgFJn006851
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:03:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZzFtqYN9pw9QSLrS0tK+ki9d
	IS1z5CdQtvo1AHtdQc8=; b=TrXcPbEOTR2LWK6jJHP1OxQTiWc3DZ0iCxKyg/bh
	HHdt0rW/ld3/l8WrX6GFPoKbxPjU9XtQ7uY7H6z8x22pmlGaJrz4XbXjB4wurLHK
	/ylSSYvjKOFVqn2N7BY5jtSTS1W2T3kXb443Sg04wWqyCjZs5yXtjB5GDqgWCs7C
	OQojcc6499E+MEkeubqGc0goE66j65zoqd8WOsyLYwEUjAUdxboavgF3KLYHJdxn
	FkBblh9iVjSjCCTJ9OjmExdYSk7js3nZkATtCL+DQL2mba3FHOmDFuhyvpARn+Xc
	mjKHLvGsXzylIyy/XzAT6w6UWc/hnAKeTEA1zzbVdA2yCQ==
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com [209.85.166.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf0ggpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 20:03:46 +0000 (GMT)
Received: by mail-il1-f198.google.com with SMTP id e9e14a558f8ab-3dc564d24cdso28658365ab.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 13:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747771414; x=1748376214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzFtqYN9pw9QSLrS0tK+ki9dIS1z5CdQtvo1AHtdQc8=;
        b=gUCJJoPIpBcmnO2zgP3Zp4UUa0LOPBoi6UgUPx57qjSKmmzYtPjkutWhHAOQyJPHz7
         AG0EBEBNtBBTOnn3nZGSYd6JMIIkVRtUTiqkTuy8yZNDzCSuwDQOuFIvWJebzxFiQAaz
         sxwFvyfEMVMSqTkoK9piJhRhniF9P9PbF2Qlx25RubBzo7vXMmfVNFDooklYTJc9tSxk
         qQyPRB8Kl4Omoo4upjyKmq2zOunza07LD0OcEZxHOb7AySEDww+C7HhhM6g3uJSnmwBj
         zfsoPeBRvn3308a6ETrcoG10tNOjd/exkr6r5moCVSSfhzi0WurQqdDwSMoS29NLNSzL
         NIkw==
X-Forwarded-Encrypted: i=1; AJvYcCXpNeiam0yPOmwcW8QdMln+bR2XWjX+ofRIKj4DLptLH4ydhJFzQ2zf7TUlg8CTUDacJ2FSBxzywdPU@vger.kernel.org
X-Gm-Message-State: AOJu0YyD2sjJJgkpUi7RDa5pkMZMwjm4WrX5cB03KE7HYe8z4OauvoMP
	gCrvp4XuFpW+pwzKEV50TBeIOx0yf58vvFCcHCw8F8Kd8NvoHBxzqSDtzVvNLQmdJI5VaDCtHYh
	QtFYcFa0Sq00trf5ddtbXKiRTHvZ7ivJ6LgiDnnvyl2VKkCJjjaYSvtJ48r593NPW
X-Gm-Gg: ASbGnct8cTfQVuzrWU1PYSIcpUzeybjm6kDdD5dYS4BFBZqdr6ditqaLXLnip2uGfjI
	eFrN2AUMuntjo5n2WG9PepkixFlSlFWInc4loVIJt64dOE5cVHko+r0U0GXs9gQrJqDV6++7yAe
	R20zeHrxn1HPx+P05ANH40E7a/mhJPJSPFEdB9qHRZGJkuQE8tuv++pk5Ir7t+AnWLHbIiEECVh
	lWdseRQb3CWzW//nqoiFOzDjFZTdHxGHKZTsk5ff5QEtJQKNYPErvOOAyUljKZa7Cegqn30Lm1U
	6nLB9EQzI2NchXepwAj6jv7IqqK2RZgNe6y0nV5xiX0fYTW2FnshvAwUDQc83nMjoXUNu2fgrvM
	=
X-Received: by 2002:a05:6e02:4515:20b0:3dc:72f8:eb5a with SMTP id e9e14a558f8ab-3dc72f8f6c6mr59168435ab.8.1747771413724;
        Tue, 20 May 2025 13:03:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkMQW0eEqSL6CRJucy/8YPsL/wGcX1YlADkSUGzyRXsUQv1razd3w2wbK/Q+8G6RL1s8s8Aw==
X-Received: by 2002:a05:6e02:4515:20b0:3dc:72f8:eb5a with SMTP id e9e14a558f8ab-3dc72f8f6c6mr59168065ab.8.1747771413339;
        Tue, 20 May 2025 13:03:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f1608csm2506687e87.8.2025.05.20.13.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 13:03:32 -0700 (PDT)
Date: Tue, 20 May 2025 23:03:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
Message-ID: <3fbffse4iqkegqjheeptnmsofz7fasqgnpbhhbzlzibv5qjxx6@dft4vafwlkfr>
References: <20250520062618.2765109-1-quic_pkumpatl@quicinc.com>
 <20250520062618.2765109-6-quic_pkumpatl@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520062618.2765109-6-quic_pkumpatl@quicinc.com>
X-Proofpoint-GUID: Z9NsaeLqfRTT6itwzllr1xibNOMo4zZn
X-Authority-Analysis: v=2.4 cv=J/Sq7BnS c=1 sm=1 tr=0 ts=682ce022 cx=c_pps
 a=knIvlqb+BQeIC/0qDTJ88A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=ZElDdoEkwM7Icc7ClhYA:9 a=CjuIK1q_8ugA:10
 a=zgiPjhLxNE0A:10 a=8vIIu0IPYQVSORyX1RVL:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Z9NsaeLqfRTT6itwzllr1xibNOMo4zZn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2MiBTYWx0ZWRfX5UMtvcjLt8GA
 jhOhmg6gVXHFrlHH8maCoxr/UjvwQweLD6nB+mkszpRbgkUUxfraWRdWPAernmLAsg3Hk6YKvEg
 0JoBKoCMpOSqwtv7Yt21FDdZ/4ChF+4zgBIpGR1yLAD9RAgeE/Ib4q+RBx99JSDzoLkOuuns71q
 Erk9JQrzJb1kyztlz2Zh2jNmfnKuZfTFkInjN1iNJJaWpYrG/hf5OLIEovDoZBw7X4XQMTg5+Dz
 f+zyjCUx2S2UTiKOVIYPzvzJESF3k6tybhE8/IOhIUHnvpux4aw4rSHnwV/ng90Y0XJvnAv7B+9
 /nl2+qEpqOdT/s6ZTK73cNnhAalz2fMDB/OY8aNc0bhJoKu/qG5Ljso235NGlfKtM3CqdkPnNzX
 mPP3BTM/p13VetA+QwT4pWEZhkM7mIdnCz6rkJSsLtCfC3vLqrmzpqmURDvz0nmhBfV/VRet
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 mlxlogscore=712 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505200162

On Tue, May 20, 2025 at 11:56:16AM +0530, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers
> and digital on-board mics.

No WCD codec?

> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 45 ++++++++++++++++++++
>  1 file changed, 45 insertions(+)

-- 
With best wishes
Dmitry

