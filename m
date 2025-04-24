Return-Path: <devicetree+bounces-170257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF8A9A4EA
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA010442D7A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 07:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1E41FFC50;
	Thu, 24 Apr 2025 07:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BgZC3Uiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFEC1F5830
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745481200; cv=none; b=QJYV79/RXfo15MP3HxbbOaTkqW5afaQygihXRl7Wzay/Z6BrnM+vcp+Zm4wl/PcAdECsEd5eb4YeSInsXZh8YKjphn9q5lOIbNBtXjqEjKn1/FmkonZvjQ38SFhEFBebWDJ6YxdZptPJjdWVp4qZd66n0D1WGIqzuiij5p5J+K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745481200; c=relaxed/simple;
	bh=/XauFfBfDLiuFsXcUDVKCdVXifDbO2H0iihUA0ON0xM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RhZijD/j0G5nQwPVItKthteR0c0n1J/EH9vPCt/IH6PmRMmcw75eN4WjrfWB+2p93ap5NEwsRSSf74AhMUpEat+j4EOKYxs1nZwLeg7izwtjxhoW5WNYs4X1NIGMuKJ9Uavku/uiXUPJrxp0UrKyD5In9npqJ87ZnZpt/zfnz84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BgZC3Uiu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0FekP008544
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x1Sl6rUgs8Bwln/XzJSCqXN1ov/Qw4BQ0VOs4DMYdN4=; b=BgZC3Uiu+epvYpOq
	0u6XTNrzcGKrwwMnJUZvZ2eO4sCDpupe3kGn1Cj37W1Xd3sw+ovSPgxek7gY0jbj
	ee3InnyjDpA343vSH4ke3B3FxJM8L1DtrYMFsMWwtFtEK+w+fBlySCAFzs3Kw5qf
	1k3jXNrj+mOGL7UNdgtvJoiuJZSD0FxgBp0633GxRVExNPPq0yYda7C6G/M2aKu0
	//xVUS8XwP2BLe/AuX77ZCZjCBoukGTegaLjLlo5oDdgcgxFKzm7OF08MAqPjFmS
	MCU33MkIttI4+7mwt0OzsqENFuwHB0hx0WcVDZOGS8fVz4/EENHIkAFe+2i967Ly
	cbQCbA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1mp16-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:53:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so125390585a.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 00:53:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745481195; x=1746085995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1Sl6rUgs8Bwln/XzJSCqXN1ov/Qw4BQ0VOs4DMYdN4=;
        b=hSlALfxtoiCYExEz0nbEbAjzTxqT/M44gWlS63rH98Utfd4O/7M+Uo0LTw+pbEdiN+
         E4xCERiutPHLlLZQlH5ULLZ9G4mIUI1ZQXFNcjxIcL8qALgFMXKopX02axk5bwlhq54u
         E9g8wvCN2sSTPgFLalTlrOZ/Pmh5FUPKTYHPTW5zBqzBTRaa5nhtRPfQ+PTculV1qLjm
         nZ5LV8hhdUV3AEaSBNL1HUL+MkbjtW0b/u0DkTgztJNmVHbPCMXMgCI6Mj2zMLo7acbM
         doKregmwpNiGB7F8rootFbEsWUKUrlCpabW18sSXMDjT44qX1eDREEAhDv0KR3h6EW1Q
         vL9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV23wJvxZx/kvc1ugJsE+lOXO5/GnEvfJv+qTR6p00zJ8/56HtNEKzEyaUfzfAXKeLqQyaBAnM60p3h@vger.kernel.org
X-Gm-Message-State: AOJu0YwFoJXs2PWcWfsuDKNttEQQjXT6Au2lBf6ML1s9ArmGi9sp+ruJ
	kqXmYrGDfDVygt2bEiQfI26sGuQRAH486BKYYqcFrOIJQqII9Yn5xqgqNEhYWOBpTpl53KXJNkT
	BqHgApMa/iahRF0AeW7T1WBloXMmrqoKaH6DidW9dL5ygkgBBaFoxf5MAwPPwk5/MK3IiHSl2GY
	ehgtRm48BzV4EJ23Q+P34vvdCWjBDY1ozHWA8=
X-Gm-Gg: ASbGncvUtAMfc/jphym32+qwtZ/kgALwSab9bOx0LK/lDMqp1z7XNcaU0wovbV17OgB
	mSzKcAD6iuc9NzAUMFdqBTc0S/VxXUcs9o4IWRYxIK3NhK7ImY5dtFYu6yrx5OXjc02VGdU8=
X-Received: by 2002:a05:620a:f0f:b0:7c5:588a:5c1e with SMTP id af79cd13be357-7c956ed7552mr245832385a.30.1745481195665;
        Thu, 24 Apr 2025 00:53:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxoRtm0YXELpnaS7DAkv7clW4amhFZAIjp6C2urZXmOOqgWsE9GVj9esW9Y9VtDt9hsu5lK2/UP7/fAa/yT4w=
X-Received: by 2002:a05:620a:f0f:b0:7c5:588a:5c1e with SMTP id
 af79cd13be357-7c956ed7552mr245830185a.30.1745481195397; Thu, 24 Apr 2025
 00:53:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-6-loic.poulain@oss.qualcomm.com> <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
In-Reply-To: <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 24 Apr 2025 09:53:04 +0200
X-Gm-Features: ATxdqUGyaIbv3BPE1bbXrVWCYTG3g7Zn6QX_hCaA5PKGIcKkNwFl3oWcX61s4f4
Message-ID: <CAFEp6-0iXCPn80Y0s6Hoq2MjgNa+OYJEr0oWSKuXtah_OF6cAQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: DjoPMTtNkb9xzkpA4ACNh1t-oNmrHLSH
X-Proofpoint-ORIG-GUID: DjoPMTtNkb9xzkpA4ACNh1t-oNmrHLSH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA1MSBTYWx0ZWRfX1DqxNT4xDzf9 WYIyqUtRyBzov3cVtQRAiOxszI4n9W/lWgVUSnukILNvTDvO7Q/3CLxCHJEV1rLBjiErd56MMYU trgX3zF0BnZ5Y2cff8tA9iYBC9c+hB4EfhNAn873VDlrBrBy/oqTK+nh7EYSVpM6XYG7JLg4G3R
 ISMftJfaTM1SMXzyWYE7WnVTkUgIeY65gPkRfMjExmWv8RrVDjOvqDvYbAcAnqkqBD3D72xedPV /9CGCrtLq02BV1PV313Kud+ZT7ex99giHK9PiLcdvekwIXxl9pKXByRqZaM8QMzAU60XrXe1X8Z FrL8guRgXB3Dvx1Jbmg6T95RiBnFIjHqqnDjHNMddys0E2DKujljKXezk40M0GhHgocMnGEspLD
 A8ONaXn3vaOke5e2CBSMxdLVO5j3Gkld1qsOJ0RhPE1aiOOCBzVH/d+bY8+uYngzkXmKiJZR
X-Authority-Analysis: v=2.4 cv=ZpjtK87G c=1 sm=1 tr=0 ts=6809eded cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=-OVsPAhMXzR0e6mcShsA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 mlxlogscore=996 spamscore=0 impostorscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240051

Hi Krzysztof,

On Thu, Apr 24, 2025 at 9:37=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Wed, Apr 23, 2025 at 09:20:43AM GMT, Loic Poulain wrote:
> > +  power-domains:
> > +    items:
> > +      - description: GDSC CAMSS Block, Global Distributed Switch Contr=
oller.
> > +
> > +  vdda-csiphy-1p2-supply:
> > +    description:
> > +      Phandle to a 1.2V regulator supply to CSI PHYs.
> > +
> > +  vdda-pll-1p8-supply:
>
>
> How are the pins or input supplies called?

Pins are called:
- VDD_A_CSI_0_1P2 (for csiphy 0)
- VDD_A_CSI_1_1P2 (for csiphy 1)
(both of the above are supplied together without individual control)
- VDD_A_CAMSS_PLL_1P8

>
> Before sending new version, allow people to actually finish ongoing
> discussion.
>
> Best regards,
> Krzysztof

