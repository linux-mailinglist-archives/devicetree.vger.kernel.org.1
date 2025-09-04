Return-Path: <devicetree+bounces-212508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E961B4301A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 04:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A26367B567A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2EE51F7098;
	Thu,  4 Sep 2025 02:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o4ZCeWXk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72381134A8
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 02:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756954632; cv=none; b=U3roE+dYLMWxp7Wgr6PKzVtCE28B0+1Aj/9prHqs8Qfoe5AuCBLBo5+NDciccJvRyMpfT6vv0VMJebCBIUCpH3ddOg/s+KItX5CKKiJB790pK6IzCzROP36H3mIWhlMSWNL87TEWSk3l9yE63ZpmlmfZP9jhW2cw8RC1nAG5Hu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756954632; c=relaxed/simple;
	bh=zB6lARCZWAp3QWoDTLpKdGRVccF0RVopNO5E0t/xn78=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SXtoWmygASzEx/Il/v0wDT9qbkS2cR2hXADUJyviZ96oDxrFS3siYMB+ir78GKL2cJf6LX4cRPx2pZc9nHhrc/3idSBX5j8y9NYqcv+wXJj1LlcdOuKVsu0sGf1Ru6Hh5RL/1odtZX6PFFr8hVfFeIRdp6mXyHGrPXQQ09YhnNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o4ZCeWXk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840WCu4032507
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 02:57:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bzEaXoQF+ag+J0SJOs2QiLzRINVuYknBIfuTABhdTUs=; b=o4ZCeWXk7vL3saQo
	rCJrW2+Bd1AfaXntGnvhFqNZV8rNGURkPnyhZ5Afq/+qqbbo1ptziuuxo97Oxr0C
	MKu/WVF8gIdHdqhV6QM7P0fjoYluHGAEfgtV7WbzunVIoImS7eVhB1KuCs0m2R8T
	GbWmdbwbk3hMZjbxq/GcxGXKxr8sTJJE0MxeRYi+1/Dn0sbxu8aAnem7qjuLVbXv
	1I4gehKLWlhJ5AtF9agegWFmay9wknyF6IiqfqYXc1yVByzeKxVN5EQvLhspHc6v
	wAJoG32m5TENZ0O19bjTTVearrKvO0lEJtnGySLhaKRY8b/jl1PwvBWTRpx+bQnL
	5E2pJA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush35tp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:57:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329dfdc23d2so432508a91.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 19:57:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756954630; x=1757559430;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bzEaXoQF+ag+J0SJOs2QiLzRINVuYknBIfuTABhdTUs=;
        b=oq9B4twBHtlunLCYHxbbCFlQiLMTcI548KJbARh8Fs0qgJ1axOvBeevYCP/6yY+hEb
         7rW0G++WBmZOjoNz1sZm/JxteHp0TYCnjcYLQHJ+615aMFXztZ1qUkt0wQDwS7hS5WSo
         u737Mikkswrse1iwzCl4mnFezsCjZaUxXireyXUysLH94PHGi3n8CIOv1h87RWhQukCy
         PRA/ZUY+EH32N5vkFBfbKx5yrel6ec1E1iOOQ6A6YHrI+CweN4XEAAeioC7YTSYyefp0
         gYhNVeLnFgRHX+9yqTlFPkPLjQEVTmAJidr7v2odIjoVWQMBQ5kNQEwvDBHPu+08OG5Y
         aYNg==
X-Forwarded-Encrypted: i=1; AJvYcCVaaFsIGfSEAnz6vLsbHR/rtlvO5MnsCob7a1oerIrIHKXUe8tLCiQIpvGf+5gvxnM2e+RzOS5JXqPD@vger.kernel.org
X-Gm-Message-State: AOJu0YyXtkMMIaBTvI9RLE3vg1VZr43Iu1mZEkxL8/Hr/6tEon81lM/7
	GkRtA6DwTpNUhIVfU9cNp0nl4ynN6C91NbDwoc3DEmu+DoMs/c6tnGkFntFCdMNhbaBx2emFt8H
	pYYKmmgwgoPeiutNvLdfEmxePHI1aFbubbqOp4qHcrcQ15G85J3a41PKtr+IBdrrgzZYPnRuUM7
	cmU1DCNBDx4AljsUzeSi1V/KrrM+sEBTPRbTBB0xA=
X-Gm-Gg: ASbGncvvGJ8AjJ1IJuLw4sNIn1GgjyLxgJTEIZUtbhBp/EZYJtq/hk1Uj70P4bbrkqD
	bGEmsTuWjr/lvQucUtJcP1Xkt+2BwqRb158FOn4eq7w0pvozKBHw6JeNv838eBehDd91enUcNi5
	etmRj5Q6fAZfL7VfNupceQtFkdf3bprW8TSSyeMUFs/qy64JsDVVYQ
X-Received: by 2002:a17:90b:518c:b0:329:e703:d00b with SMTP id 98e67ed59e1d1-329e703d645mr10321003a91.19.1756954629722;
        Wed, 03 Sep 2025 19:57:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOCPdzFNzraiWHbGuHEoBM1QvtTU0Nb0FFJzX0uW97BnqhL/gBuv33SiRgGl4vDEi8Sr3AnsPHLBpMRXmEtAg=
X-Received: by 2002:a17:90b:518c:b0:329:e703:d00b with SMTP id
 98e67ed59e1d1-329e703d645mr10320975a91.19.1756954629213; Wed, 03 Sep 2025
 19:57:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903123825.1721443-1-syyang@lontium.com> <20250903123825.1721443-2-syyang@lontium.com>
 <lcyori44rm5p35wykk2rb54zbrrpft5c7uibi376jihemkb67w@px3nj72a5hx4> <CAFQXuNYKcGHyWLD5hjj24CrbaXzkaKsLU4R2vmhYaryQArA_yQ@mail.gmail.com>
In-Reply-To: <CAFQXuNYKcGHyWLD5hjj24CrbaXzkaKsLU4R2vmhYaryQArA_yQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 05:56:57 +0300
X-Gm-Features: Ac12FXwqpLK0wU-JoT7FAo_2ssmdmZOCvHkhkCqIZn8qnoojkUv60OwC5s_f_Yg
Message-ID: <CAO9ioeVUtmVjdxyykTXysQwdUx8iKLqrsU=yehR-pPtvk_QEFw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] This patch adds a new device tree binding documentation.
To: =?UTF-8?B?5p2o5a2Z6L+Q?= <yangsunyun1993@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>, devicetree@vger.kernel.org,
        DRI Development List <dri-devel@lists.freedesktop.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX+Lvrtd+t5XvA
 zOu+d10IjOA6jStxwV16J+NmgST+/UOKqMDboKlSUUhhjdHyhUOi3NOC96nRH0wapdGDwdBVl78
 iPiD8XJyRoJDJdbnKjhZucDaGUCkokXl/+sUpFWVKTyCj/7B3l1eWOYT/RaLBZZe5ifcRFhX5Y/
 8BpLpWyvCglpXzr8SEGXg2+QSl/flvb8EZK0VILHSKXrBwxcAXJi08fxAaiEGdBH5XBCqOvCWbW
 3009jBxqE+p8T7pFJq3J3mh6w2aXLE/zt7reIPHLyUWI0P6pAWDdFrb2e6cpGvvR4I5lpdMc3U5
 ermEILc1ATz39B3gm+CsMlZsqvoXWXyrDPTf6UyUtyEZ/UwRzTVPIzPel+jP/3I7mFWV74Kn+mz
 zylPmxEk
X-Proofpoint-ORIG-GUID: UyQPTRIMKHUXjm300QozVM_wtuP5DF9G
X-Proofpoint-GUID: UyQPTRIMKHUXjm300QozVM_wtuP5DF9G
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b90006 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=pGLkceISAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8
 a=yqK20mq1EwIQVBnv59QA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Thu, 4 Sept 2025 at 05:39, =E6=9D=A8=E5=AD=99=E8=BF=90 <yangsunyun1993@g=
mail.com> wrote:
>
> thanks Dmitry baryshkov:
>
> 1. Please fix your Git setup and use your full name in SoB tag and author=
 metadata.
>      ->  i will fix.
>
> 2. +maintainers:
>      +  - Rob Herring <robh@kernel.org>
>          Are you sure?
>
>      -> I'm not sure. I need to do some research.
>
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> =E4=BA=8E2025=E5=B9=
=B49=E6=9C=884=E6=97=A5=E5=91=A8=E5=9B=9B 10:22=E5=86=99=E9=81=93=EF=BC=9A
>>
>> On Wed, Sep 03, 2025 at 05:38:24AM -0700, syyang wrote:
>> > - New device tree binding documentation at
>> >   Documentation/devicetree/bindings/display/bridge/lontium,lt9611c.yam=
l
>> >
>> > Signed-off-by: syyang <syyang@lontium.com>

Please:
- Don't use HTML email
- Don't reply off-list
- Don't top-post

>>
>> Please fix your Git setup and use your full name in SoB tag and author
>> metadata.



--=20
With best wishes
Dmitry

