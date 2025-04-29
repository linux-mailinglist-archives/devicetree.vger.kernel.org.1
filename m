Return-Path: <devicetree+bounces-171982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24149AA0D12
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DA10168386
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37152C2AB6;
	Tue, 29 Apr 2025 13:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KaPgz+OB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAEB28E0F
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932154; cv=none; b=Qq7D2dcN3XHMx2gRXCQIWQjOmikXpaFEhmqMvm6ht6DGKH+hYVTkL4t5+fACtPK/fOuZUj/lh31h6P7l8oZYWSoXisNCf/yXHLaK/CQy/eBAXuK0vkvFj8KmNIJm8x9ZiYhp319e9VRO5AJBUOhm3rje1WcOxectx7GfEWxlSrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932154; c=relaxed/simple;
	bh=hYAzmXGosbvhS67g9T2ALbNEvR8Epg7Z8Q/9LojIXxM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EvaMSwDfFsLl6jNXZXt+aWhuxWCh5+JGGxq5pb2JwNao+BM7HkFDE4n6//NBCHsagb11lYWAPY6TeLJicETV29dCil/qFlK1xDRUNGO5aXBB1I1qAAUj8USnnV65eJ/tfax05pmNYJu35r/TR7KWa9oOaHYOiEwrRhoPQUoHA6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KaPgz+OB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53T9Zipr004220
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:09:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rLQMIv0xFpYd5gME32Tq6/iviZFE59zMzQ/GnSRmCF4=; b=KaPgz+OB1c12h1Te
	mvGltiiDby3Z2HEmooFXnlwX3+jDAyhHX4iMGTAV5sUH3cuT5+5rmhM67Co395Vu
	WkoiIGT2zdCrOzZgXGBkM90obeEDsAskuFfeKnw3YJs4M8KrIdXL8mRMPiMOLc2Z
	4e2JV6VWKAfkE5v5o7dMT2xXjTQaNhiMsIT1hGZfDd3cA6wX+39AGLMbk0Gxpoqb
	nDV6H9m4JTCHLPJfo3z5zATyWCGegcBKgpzrFAbtQWFUzQoZLwX9Gma8qB0EE2MQ
	+lkK1NmoOIxM8nRcEHJ9WuJxB8FgAQIUjq8pOCl1pkfIcpST1ebTXTp+ySh5vIPl
	STsNiA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rsbbm7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:09:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e905e89798so110711786d6.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:09:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745932151; x=1746536951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rLQMIv0xFpYd5gME32Tq6/iviZFE59zMzQ/GnSRmCF4=;
        b=gXRDynJyMxm+mvUTPcuGmwgKlli5pa+5y4xMy++GwR//TQOKYeOFGhDDt8zXSgqBKD
         Uk32sd6h0y5xWKd9lQjUIKBtCcUexP5kdq2wCfHQByXEBqA1lEeUaFe2b0x/133+I4gs
         XHInDrbTEi/fDENCUcWTeTzUlOuJpM9kLalX0U8+m05ZQDYfRpxJoMbHnLkFMC0sdgEa
         pouix4prOhL+fyIriS0wIXQzsH1B2gtEO1n/6mcyTzQPCxmNW3pbwCDzfElJlmEVzQ/U
         Z03QurNgeeprH8PFTFRbBdbGjICsVkvBVjaonxt1lDucSYLz6W7CAR9WRbyKfpKzskBE
         CUng==
X-Forwarded-Encrypted: i=1; AJvYcCV9z/zaIBm7sZhoSSGdT98et8t+0LoqDoZnFPCspCaTiNcvDAZrqMH1x4GQCQR8Uh2Zln056wvSzijw@vger.kernel.org
X-Gm-Message-State: AOJu0YxZEBhbkT7pjGavglSvPEz91AOiRu+3v5UxrBT+sPkchxkWBjsW
	gO+ff0UE6125FDBOU669kXdXUythbM6dJ6MRhJ6CY8CBTQbJgoRI/JehMdwz787nbZ45L/udQcH
	myfZCB8Wex1x+eiv+YMQ/btlEMZy8Gw/wVcHDqqAMCzva80dFbhGKR6WSzog81kEPQeqHK1307d
	05UWNzfVo0TNzrozwg0QPIQVulzoK9QMJCzUg=
X-Gm-Gg: ASbGncuXzDRQvDiQK4xyf405PFMhk7537fsJVDVkbpn7CKhsCpZkc6g6G7iKXEXQH5l
	MSf1NMwHYbOMPv/rMwuzEKc5pL/Pe7jnjwE+ZtPrPJxsFhb2y3DId8XDhUUBmQ3Mv7Uvre6M=
X-Received: by 2002:a05:6214:4883:b0:6f4:f621:4e4 with SMTP id 6a1803df08f44-6f4f62105cdmr29587266d6.28.1745932151262;
        Tue, 29 Apr 2025 06:09:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUZF7glwsv5EsiUW9tnhv/kG1tqlGezSWA4sVtgtVHxLESQhTFiE0kFmf4oi03RwGi1QL8OQecrX4u9Z7kxvs=
X-Received: by 2002:a05:6214:4883:b0:6f4:f621:4e4 with SMTP id
 6a1803df08f44-6f4f62105cdmr29586796d6.28.1745932150755; Tue, 29 Apr 2025
 06:09:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
 <20250423072044.234024-6-loic.poulain@oss.qualcomm.com> <20250424-versatile-brown-chowchow-dfc4a9@kuoka>
 <CAFEp6-0iXCPn80Y0s6Hoq2MjgNa+OYJEr0oWSKuXtah_OF6cAQ@mail.gmail.com> <e82a8733-a3b9-43de-9142-7454bc57474c@kernel.org>
In-Reply-To: <e82a8733-a3b9-43de-9142-7454bc57474c@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 15:08:59 +0200
X-Gm-Features: ATxdqUEORLJ-4IOE6d2bKCV5nlawCoPYXnERxFVVVyAB1net-O4c7YA9D12W4XA
Message-ID: <CAFEp6-3EA5dQJCsZYaqr_ySV1hV7kY+53jTo9ZaX6kx3rq7LYQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA5OCBTYWx0ZWRfXzLKN6TyUahyB bdhKtqGC0vdAlW8N2QvC5+X1xh/oOoPnDzgouorPr3WWl1EAdaeJpGDmNLY1HrNG/4JRQNkmIih Q2kxZRQMDcLMo7EbWNEI96sWuBuu+2/+ykvC6c7rjOTzvF/nCnM3PfkcF3uKSh+8TAxl+t3vN+m
 PotKSGe69ilMnw9IY6LHjtwdOzDQt9rTk5pFKep50Z1GSwYTozKtAZ8jK7OrDwRKY2Fu38APqw6 bVq4qe4VrqnZsNaoz1vdYpHCIuNXK9vpz4KGnAoQs73nw1pf/goF/fMSaSMbkXP5YPOq3w7Z6B/ FUNfgshvhyDu6G/twaQT/27q3+5/EOCbGq6HUvLdBliKJpcPQdsKaeCvgdOvBubn2BjWKeU4Z32
 4zQeBsIvzfJP1UDqn9I/oucrmt0rrrusf9t/yVTURtVNB9vuhPaDCprShP4FKKFw3aMKEVO1
X-Proofpoint-GUID: 02qw82JeiLPYQGnr23urZ5EZw3tANJIu
X-Proofpoint-ORIG-GUID: 02qw82JeiLPYQGnr23urZ5EZw3tANJIu
X-Authority-Analysis: v=2.4 cv=I8ZlRMgg c=1 sm=1 tr=0 ts=6810cf78 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=n2xLeyCKjO2G4W8piNAA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290098

Hi Krzysztof, Bryan

On Thu, Apr 24, 2025 at 5:51=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 24/04/2025 09:53, Loic Poulain wrote:
> > Hi Krzysztof,
> >
> > On Thu, Apr 24, 2025 at 9:37=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On Wed, Apr 23, 2025 at 09:20:43AM GMT, Loic Poulain wrote:
> >>> +  power-domains:
> >>> +    items:
> >>> +      - description: GDSC CAMSS Block, Global Distributed Switch Con=
troller.
> >>> +
> >>> +  vdda-csiphy-1p2-supply:
> >>> +    description:
> >>> +      Phandle to a 1.2V regulator supply to CSI PHYs.
> >>> +
> >>> +  vdda-pll-1p8-supply:
> >>
> >>
> >> How are the pins or input supplies called?
> >
> > Pins are called:
> > - VDD_A_CSI_0_1P2 (for csiphy 0)
> > - VDD_A_CSI_1_1P2 (for csiphy 1)
>
> OK. This however starts new questions: why aren't there separate nodes
> for the CSI PHY controllers? These are separate blocks with their own
> address space, own power rails, own interrupts and own clocks.
>
> > (both of the above are supplied together without individual control)
> > - VDD_A_CAMSS_PLL_1P8
> This does not need voltage name then.

I've been trying to follow the various threads on this topic, but it
seems there's no consensus yet. So wouldn't it be more practical
to use the regular/simple bindings, similar to those used for the SM8250?
- vdda-phy-supply
- vdda-pll-supply

I understand that more complex bindings, including voltage, CSIPHY
index, etc., are not necessary here, + this will likely be replaced
by the long-term effort to establish dedicated nodes for the CSIPHYs.

Regards,
Loic

