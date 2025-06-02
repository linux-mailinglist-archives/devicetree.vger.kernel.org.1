Return-Path: <devicetree+bounces-182106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9765ACA8DC
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 07:17:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E5693B1B61
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 05:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847D218787A;
	Mon,  2 Jun 2025 05:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GP9bYpvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6FDBE6C
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 05:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748841430; cv=none; b=guOysC96xoZKMLYGo7gAnY1fKYVc8/I+j3k8Aw5JLQvWaQ7D3kKZZbg0Cwej4iQCrvHotYx4yPVnBzyGFTtanykitAGJ75nYcOETj0LULoMiEwjFDg38XDFGdPyxGU/E2qXL8R6fbAemjoH0vfr9L3rwzOivKdAfrOdq7LwMrUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748841430; c=relaxed/simple;
	bh=QlgZisWVY17SLtoiXdf351YXoW5eO2YEIBQ2EQVI5BE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J15QFaj49Lk227sxkiGXtflYhtSJMopL+ms8SYBxyiqfi8jKZg0Nzj6krIEWSW0pp8KDucq3kG5tknU3zgb5e+YAdksXixKHPmg++A5SXhgN2cgQ8MsXNrTIyluffD/8MIFC+vBHtbW6LVE1OEtfVo+Dg1iQTHhK21EEWuiSigM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GP9bYpvp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 551M9sbg017086
	for <devicetree@vger.kernel.org>; Mon, 2 Jun 2025 05:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BcvF3wu0+glYxRvQURwwkyPb
	Iw+40g+dQPFaEyxFw88=; b=GP9bYpvpahtE5IBqlgEbKiOhXg6THipkPi4Sa5D2
	SDZd1Ulu6vmJUpASjAQBAffcirieEVAqMA5mze5s3AHyEfOWMQ8K1OuOUMnKqacP
	F2JWvLk7F2DwE5WPOmhf1PW9G7vPGgDGjAbDPqPbaXh3Zy/as4cENeh1CW32oAkh
	RjFVpzP3HjJAdDEcoXLmmOG9Sq5ICWR3sjOXHv5EMs/Z5f0JgUA5LDniHTtk21PX
	tgbI6FTDQnejfSJPJOgp6TvFP2ZlpDZ5ysdfstweYpronhBD1wOGuIiWFuUonZO3
	iXmuM+5UbEyubg9ok1IjZwETRJCMSqMN4bbvr11Fio5UyA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytsdudkm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 05:17:06 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-30ea0e890ccso3744395a91.2
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 22:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748841426; x=1749446226;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcvF3wu0+glYxRvQURwwkyPbIw+40g+dQPFaEyxFw88=;
        b=bDhqx1Vzi1WhNurQguObX+AplcjeXEe46JNYCdGH+5P16zbsqIWqqQ4vaJp+z53mfp
         7F2xxJ+DqjjIf376Jz1HWfXRPclBd0FXbEbpndb3KXcveBbN55dY1csXIt6LSP+6S0WI
         nPRjL5Amk6tKAw7fqLdHMir5FyWDfBP5qPnbMPmOFqyQeWQhvAKdTTwm5qIYi/U5ApM7
         UKCwBlb81cH2Hd5x3lzm+9HCqI/xgQEgYtrHLUDswyjwAQiHkMimXmOEXZywHqqEnOys
         scsbTCKbKRYqwWBDKWqBef+4/qzym9iXohfjk3oW6+MhBt7Csprvwp0gTryQCZ6eYeCa
         t21g==
X-Forwarded-Encrypted: i=1; AJvYcCV6B119X4mLsel8cVrqb1YO2DQOCq3mRXEWKoMKUeZztTRIeTjLljI5nkRwj+/zcJs5rfXpNjIJspK2@vger.kernel.org
X-Gm-Message-State: AOJu0YzYqVFW90hZ69ewUixW+HATIQlmiSM6Ibi8jitBC6bN+A2FZTc8
	yPhcLpxxN3TZ8Bz5dkud7h4MWP6NpZmEGaLk2PRfWqRCfSucQkrl1MTSCQerua9aNWaGOFpmhj7
	j3iXKjgvGa8NXD4IJ9g+Ovt6yLe2+n++QmjIsXlCjBBc75ZnlmlBF28Lc4b+jS+uXrzQs+xhzy0
	pkWJWEV9D7Pt10DbE8HPOu9MMpSTj3qHKRwRo9OU4=
X-Gm-Gg: ASbGncuqVC7cUFj+jaLKFS9XR3uezlAENRIAh3euBgsZVvHL+5IUEKZPc9576lp7W+T
	z9fBYU4GoMhN9nIrH8HQThzoK8QNgWcJwD4ucPfKZ/CebhKvw4g4mh16J7UBkNSpb5bgT
X-Received: by 2002:a17:90b:5828:b0:311:e8cc:4264 with SMTP id 98e67ed59e1d1-31250363513mr19184371a91.12.1748841426089;
        Sun, 01 Jun 2025 22:17:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHChfK7PzYEZQwIvqSMCkJ/uvXJUWw56R0DX0Cq8T43ylpHzEa8bN6hcW7rjeT7ueXeX59XgKnJOr16AZ1SCX8=
X-Received: by 2002:a17:90b:5828:b0:311:e8cc:4264 with SMTP id
 98e67ed59e1d1-31250363513mr19184328a91.12.1748841425612; Sun, 01 Jun 2025
 22:17:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <DA70A4LOJ57L.1RTX2K0Z6PU0L@linaro.org> <5b28e37d-6d46-472a-9aef-d2d86ea8f04b@quicinc.com>
In-Reply-To: <5b28e37d-6d46-472a-9aef-d2d86ea8f04b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 2 Jun 2025 08:16:54 +0300
X-Gm-Features: AX0GCFtphupxUXzge-OP-7CeHDdsIOZC-CkWPj3OAeMdCwPb4GB5B5RCJ_MKFaQ
Message-ID: <CAO9ioeUPQOTgAY1FDW=VCNbcTHv6jZFnjF7F0JdJb5Px3Dhotg@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] Enable audio on qcs6490-RB3Gen2 and qcm6490-idp boards
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: X2PfkGggMq7EYrmPOGsSKnYzU6ioogNr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAyMDA0MiBTYWx0ZWRfX+ll9aG+lTr9Y
 hRiRNCJPRBJLKkrQEkledf5/KglRo+EkJbUkSRr2aoUfXuZGjIW1lzaRVs8UFE88+ge9z2R0aet
 SJ9uaxNMDYMG9prcrH3gYoYwuOCL8vsN/cyIPkb8TSwqZBspNAeoy77r/Ag6GjJyH1ExJ5b7Zrx
 FCGv+Kp2nPRcd6VREOeWrbxd5AMqt5xPd3LH9WTu0p9gJBLm6b8Djy4zgaUe+sa+YocWeHDgiBy
 OdEICVUk072HyJHWfMQXmqC/czv8LCM1sgKcq1B4ovpXc3XQKT2uFFIai7kPEXcySm2wD4eN6yD
 4t+O7YZfD58f7S+JHtW+xdzmPzAyT24Db4fKMgi3ndnKKoo4A041V/9LkmckSEef2maSrshyTmH
 NeBIYCwBoJ9rgUTzMlHp/pXT/bBPU/dolmYlQ0rjBd86kUWriDlwhtrV4Tvi9MYZQL0E5f+E
X-Proofpoint-GUID: X2PfkGggMq7EYrmPOGsSKnYzU6ioogNr
X-Authority-Analysis: v=2.4 cv=bYJrUPPB c=1 sm=1 tr=0 ts=683d33d3 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10
 a=NEAV23lmAAAA:8 a=COk6AnOGAAAA:8 a=XMtzzObD5LvXkpxU5CkA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-02_01,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 spamscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 mlxlogscore=928 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2506020042

On Sun, 1 Jun 2025 at 16:02, Prasad Kumpatla <quic_pkumpatl@quicinc.com> wrote:
>
>
>
> On 5/27/2025 7:47 PM, Alexey Klimov wrote:
> > On Tue May 27, 2025 at 12:12 PM BST, Prasad Kumpatla wrote:
> >> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> >>
> >> Audio support is now enabled on the qcs6490-RB3Gen2 and qcm6490-idp boards.
> >> The updates include adding the necessary audio device tree support and the required
> >> dependencies.
> >
> > Do you have topology file and mixers commands (or UCM profile) to test this?
> >
> > I already asked but I don't see any replies. How this can be tested?
>
> please use these below UCM config files
> https://github.com/mohsRafi/alsa-ucm-conf/blob/qcs6490_qcm6490_hifi/ucm2/Qualcomm/qcs6490/QCS6490-RB3Gen2/HiFi.conf
>
> https://github.com/mohsRafi/alsa-ucm-conf/blob/qcs6490_qcm6490_hifi/ucm2/Qualcomm/qcm6490/QCM6490-IDP/HiFi.conf

Is there anything there that isn't a part of the 1.2.14 release of
alsa-ucm-conf?


-- 
With best wishes
Dmitry

