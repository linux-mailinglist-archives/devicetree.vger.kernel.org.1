Return-Path: <devicetree+bounces-179538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0654EAC0B7D
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:18:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 843CE7B3DDC
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 12:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32AF2221285;
	Thu, 22 May 2025 12:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aa9YyTqc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88CB7D098
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916305; cv=none; b=hPPHkRRosQ7jTOiiGPEAVajw7WFDGPP2963u0dwvRIHFh2a+wzr/7aVpEDmgfzsNVcX62/71Oj8XJrdW/CFXg6Li6mV8zmf/QH7HlPN/FD3kUn+4jLHuFpf7tdTaUhKQ7wN92/bW/cULrdSov5yBAg0IZHiF33O1qktJzEHuy5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916305; c=relaxed/simple;
	bh=n5NvcF86AW6hY51Jx68o6/rnmz3zNVCds/LjSsBnAH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N8znhyYcWF26+wma7S2n65PYnmS5s0lcnyUDzRWNZftgwTfqrFl5nduzHC0Jhd5VKq8H3iME1p4tWMTirlDSV8HoRobsQt+Hx9e9VSO6poY70rKshKPqP9vIX4zWkZwjStXaFZhVT2+6NU8BZeyZkCQEw6Xrm0UlxWQ9siIxAcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aa9YyTqc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7kcx7031694
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:18:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0lCT7OHY4qkgiQFGYQKA7CZb
	Akqwj5/9Vf4jfYRxp2w=; b=Aa9YyTqcmPha0q2DghHt2xtcU5SYpTQI+wn9JyNC
	TPmR/lWZKU1zGBkKvQl+rzqe05qy4HRdAZV+B3kZWUl4/udXyyDvY6/aJQyp5E9c
	PnvR/TqDIzEEHZj1YqRBOaYT8HaTg/C8PrY7Y9Cw179AUBE8TUvX63Onr2SovWxr
	6IEi+hF8cnpPoswawlLp1ruya8hMT4vsx/Rh8Ai/+QZVJWnDpk6FtY79pkseUoPc
	IPCL9eZHPBgHBaff/H9WiXFv/HAegnUtXq8jI2RrCFcxiKs360OkUIBxn+JMsXcj
	zVWU1JPyA2bUkkZpw68CKKht2EwzNIimJnvyVObqibnkxg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c24ux7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 12:18:22 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b240fdc9c20so8068705a12.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 05:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747916302; x=1748521102;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0lCT7OHY4qkgiQFGYQKA7CZbAkqwj5/9Vf4jfYRxp2w=;
        b=M3zlmWLFFXzKlAypMZifbIgV+f3lBYQ8FCikwghK6fDr+bi6qUXuSNxikG/36cseH8
         cDyIAsBZ+FuRm0cvt+sMgbBLQMMQeVB+ifdCFHFDmX4g8QUg9sG+gnw9V7hnvz3nhR1P
         ASD2sKYUmBCFe9Hk5zRf4xy2I8lyOD3kCNMdcZTUS8VdNGe3G3YcUj9d3B6niwKST7Ax
         epiOG8DST3xTzdYNhxaT2i46vnKeRIGeUqjiDcOfx4Wnqlu32MI9G7rCDz35s0e06Tvb
         pp5Zr4VK2pVYPw7wOMQLpAefzCPTCnuyNRXENKqrorcNJEMc2aYqHtnrLxU7h0weBIAf
         hhnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBRf1rgVUlKKIg43LmcMGth3I30sqKBS4UpPQnjtvgUer4mzlAyq9kmmctaZz/2TZIVLwzGd30IUGe@vger.kernel.org
X-Gm-Message-State: AOJu0YzUPhC2/E9gCoA7omljrog9ZNqOlpzrUdG+g48TJEiDnWuvFTjZ
	PIZPNTJOrTpD+D8TXRf+qeZEL75ukLUc+BaUDN5OsYADxeB5CVxoA3pxdNyHa9ekSoz4P7dIdwL
	dkG5KnFpCi/xWS1Wa4PEDyR+oUEuxUd1KxEsLCXTy/8v5ykc5AmQQxfZR8mjB6OEARMOvwxJ5q1
	ahEksBhRct1vrmPS3tCZ8QoCoMbxvAqqqA+M7dntFs2DbrXoU=
X-Gm-Gg: ASbGncs5lXqR5+4qGsJPtjUN2BXHY7eAAeHZ9TyYnyPKR+K8oIsYk6hFL1ry3j51iKp
	/hGUMnO8A3N6/EmS7E9/zZaRZdZ8Ji85PJbKvo+azn/RBG4sEJbNvflKOms/YeDd7HYpGX3lZ6D
	A//xKFFPY=
X-Received: by 2002:a17:90b:1c09:b0:310:8d9a:95b6 with SMTP id 98e67ed59e1d1-3108d9ae7eemr9677112a91.25.1747916301875;
        Thu, 22 May 2025 05:18:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVCBtSXCGrxGhOjYPLWJ1Pge+L+iUp5ZhWbLEtsrjwBVC47icKDyLQuongy1ue5r0NbqFAbpPouL6VSBeNM0U=
X-Received: by 2002:a17:902:e885:b0:22d:b2c9:7fd7 with SMTP id
 d9443c01a7336-231d43bda66mr369410555ad.21.1747916291391; Thu, 22 May 2025
 05:18:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <aAswZg9s41s/m/se@linaro.org> <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
In-Reply-To: <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 22 May 2025 15:18:00 +0300
X-Gm-Features: AX0GCFsGEs3QorxIOmjt3hRGNqdEtBYgdaIA34L_R3JHBLbT-M4cKvdAgLWPMNM
Message-ID: <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDEyNCBTYWx0ZWRfX2gdcFAAaJPqm
 J84kNCZ+td6dermHpgizmOblPLTX/zKLKHLF1fBKfDWqlppaSIaStR5lPbDZkabZF19G+QeYS2S
 KuDE/P5bu6TKwgdNAr94RwQASegKwS3tVKLTCweBOtnfuy+TiWuFWGHi88NlED70cGjD3sg/y63
 6JD42hLS6xo1BsXhWSr3of67w7cUwPLAePhvl0K61iaxOe37eqKolKFzScnILkngWGLrcetrVv5
 dUn1MPzqkKK1dUmiFy9Ra2G1Az1aVoYbrpu4WFF07MPbtHUcWBmhl8htJmkd3VjnrzFpsSzjqQJ
 CQ+KOel0u3EPEQ9t03Y6hasv5RrypvBlRenmAB90mdxGiz0yCWUju8oYKMpKvjoAxBGKdf06YFI
 dJsOq/+Tbu86wFqi7KhZhEDxbGhHRZs2yusCaiEzxwat1l69bMEfOIml98Cg3EqzWvbZn44M
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=682f160e cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=aPcUfg5sKJd9qEyIwccA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5Wx51kF8yNDqRcjk8qS4Yla4mQ02J4vx
X-Proofpoint-GUID: 5Wx51kF8yNDqRcjk8qS4Yla4mQ02J4vx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=545 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220124

On Thu, 22 May 2025 at 14:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 25/04/2025 08:49, Abel Vesa wrote:
> > On 25-04-21 15:00:13, Melody Olvera wrote:
> >> From: Wesley Cheng <quic_wcheng@quicinc.com>
> >>
> >> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> >
> > Nitpick: Drop the double space from the beginning of each phrase.
>
> Sorry, but why? That's a correct grammar.


Being absolutely nitpicky, this depends on the country. In some cases
(US) typography settled on using double space after full-stop. In
other cases it's a normal space.


-- 
With best wishes
Dmitry

