Return-Path: <devicetree+bounces-193333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FE8AFA4C3
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 13:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D17AE17C2D6
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 11:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E925202963;
	Sun,  6 Jul 2025 11:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VYYBIkei"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FCB157A72
	for <devicetree@vger.kernel.org>; Sun,  6 Jul 2025 11:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751801080; cv=none; b=Qiz5UCqH5vPGfNjk1+hVQW/a8HdsHaaz2gjSdCXAlSCGgbs/BlbpHte8rMwGJ86VY4KT7IyW46+xNMHzK/D2mqtRJTJQdYmR1qPWuThrwR/sknaHTBIj7icDWNGOEji7dmW6bsCqIxJgZEH66OwkHu9QVtsHq0pIV/mchBc23cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751801080; c=relaxed/simple;
	bh=xviC/Capada6BatJaaUFyNv9rU1usAY5FNJckp2f86I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fMWTbu/Ow5iErTWdILG5CHLd3xzAPXp0F/yh8zgEOiN06GW+bIA+SmDtJAP3yZeb8Xu2x+mYKcO+DxI0tw1lPdVIe3BCBvybi23E/dvGcmRfLsbyqlNffHyVv/3KckkE56/RBzIHfDixyfbH2DHVEmjc31s4axpHx3lDko5/sSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VYYBIkei; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566BObMd016039;
	Sun, 6 Jul 2025 11:24:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lZ4wwBfarfMu4FkrcJkR7OZr
	INgFH1Bdf9heJSXgTxs=; b=VYYBIkeiin0PR82ZMncxUtwhwPT6cO5tPwmBch14
	PE5RogrghKZ7F4s+jJUA5gtYoR9of97tLfBAbOOk9GEyoWB8zXRYA/agbRQ3ZGf/
	ZOk9fx7OAhEQcVkqq+o8Q2AmqNFAiKkTC8wEd+Axvr2YeqU4onZunRKCkA4giabc
	tyEB8OyDcUDRlL/WthOh/nQxl17SiReeLZ91nkBLYS5TokXQi8JiJ+KMVb3CIhTn
	flj6zwflp25uO2CGgQnWujouXDSwhGQlMwekGyY0jprIR5OIztUUjpZRoj3AyZEP
	JPl8RheHt1nON5jtGnJcQJT6QYkoWblob3c0LifUF12CWw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdqc021-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 11:24:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d399070cecso402333185a.3
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 04:24:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751801077; x=1752405877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZ4wwBfarfMu4FkrcJkR7OZrINgFH1Bdf9heJSXgTxs=;
        b=faLVtDay7UlU1KPIdDn6NRU2McglyirMlrnASCaanIRdejM3o4NzGY0ImrFyqx8fB8
         L0CNhk1W7wPpTh1mi8g5Ayr+9f6Grw+hc3eGnIghVnxgShQJ7mpl7Jz28XliATRqYIBF
         LoqKK6dvhQsjrZh/tnkgNCjhwxYWMUdU7td4Y81NMijE+07YTX1cFjeY8KrGGHQojlvF
         Jcfq7+IcyxYNfV0th+F69aJk8ci8xZHxN2OvByHSeyC7JDU4zd7aimNB9YL/0BBKr9DB
         HtOAwGQkr+OMmrmBfwf7nZgu5n8islsAKZ73AC8jA1avWZPVmtoyRJeZX7ZIhrCL9C7A
         EfXg==
X-Forwarded-Encrypted: i=1; AJvYcCX6Qa8Xu9GB2Ia6GsS4i/gqZrRRrOcc4E4nVdmgsCboIXyrMz0wSqgjMkPcQzOEHaJIl396gq5YqqAH@vger.kernel.org
X-Gm-Message-State: AOJu0YwkRUA4ltT8hJItNk6dFzqpqIO7PW/6sAb0YuJW7h49kZDDlQPv
	8m/l2bWwWoggHvgC0YLn5sBJtBi40T+yro5CicGRXs+vjZop1kAqwOHIFjfoUhs9lLSTkusZT8q
	YNdMQAgO+SUdx6ZTU4GQVhnGKIia4ghrTM+XqMM554bVKpXz7NtzqcBUVNaNXV2sN
X-Gm-Gg: ASbGnctg421DvnTIDrhDnDby36Dn4JrHYEzw5dp/sTHJxBvc+TEyRA/akJeXFFmf2/9
	pSFIJyJhC3zi1zA5wwfF4f2ajgo7U7TpB/IVqC4SCcUtjn4uvB+lZ7XfyUmpRTjBKfQBaoCOmGM
	L03rXwy48Pj/KWo5tU/VrVj9ziJNNEUObGje0HHieHajQKD0VkM8u+BzVXbyE4m29B6KGTZ0R1C
	09HLsKHvU7I962l9Yiv1DvRMFI8sCAx/HKoDiSsqXnDz4DFghqkEZV0PgzESEfb4M3WL67VPBMT
	rQ+01pMho27h00c3RloDAF94o4fNGSCCiEtuSJ0/4BBdL5x/7MWpNom2DSd6QiWGCYhQS2dpkcM
	46q6nfBP1dusTxI7+PSQ3kois4qJNkmGl1T8=
X-Received: by 2002:a05:620a:bcd:b0:7d0:9ebd:821d with SMTP id af79cd13be357-7d5df0f57a1mr1309144185a.23.1751801076703;
        Sun, 06 Jul 2025 04:24:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHQxYqVhwCDN6qw826q9oGMWTR8eFtlGsSrq4QGizeqSiuAU0bbfjwG1uKJ+bSsm5e2+rnjSw==
X-Received: by 2002:a05:620a:bcd:b0:7d0:9ebd:821d with SMTP id af79cd13be357-7d5df0f57a1mr1309140585a.23.1751801076305;
        Sun, 06 Jul 2025 04:24:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32e1afecf39sm9101591fa.42.2025.07.06.04.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 04:24:35 -0700 (PDT)
Date: Sun, 6 Jul 2025 14:24:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>, Luca Weiss <luca.weiss@fairphone.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Helge Deller <deller@gmx.de>, linux-fbdev@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: display: simple-framebuffer: Add
 interconnects property
Message-ID: <vk7xshncx3vj66ykbt3cfdjwdsx5uewfzlqmfsdbjfgju4awwk@lz76hnenxq2u>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-1-f69b86cd3d7d@fairphone.com>
 <20250627-mysterious-optimistic-bird-acaafb@krzk-bin>
 <DAX7ZB27SBPV.2Y0I09TVSF3TT@fairphone.com>
 <1129bc60-f9cb-40be-9869-8ffa3b3c9748@kernel.org>
 <8a3ad930-bfb1-4531-9d34-fdf7d437f352@redhat.com>
 <85521ded-734d-48e8-8f76-c57739102ded@kernel.org>
 <e534d496-6ce0-46c8-835d-94b3346446a7@redhat.com>
 <6e4253dd-cd73-4302-b9df-44c8c311eb22@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e4253dd-cd73-4302-b9df-44c8c311eb22@kernel.org>
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686a5cf5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=N6X6wSw0Y0as479F-PQA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: JQOhSDzc1KUWJjKX5wy8wbtuO_WP609e
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA2MDA3MSBTYWx0ZWRfX6B27F4rhY8VI
 GUdmDGmnlmItPtGW5qMrEOMZJ5lY+r8PDVgHO/mqr6Qlq/UFCJmMJjRVYyTR1/UQjrphm70v97e
 8FS+MYTO9+ysyoCSTeQSUC9gWTZqwaBj4Z3UHzsYekiWMwMcadaq7zvZHmo5ueL5R3eN/stWrNG
 n2l91sbnTfd6wU1g77LA6BKQ0PQXMaI2VBc56yS7xfCLAEkN19pt7anucY6624gNeKQTwDfbxBg
 a3N0F2zRg5n3qndgBzia5oSrj4XakbsKJuGpYOVoUzjM/uoDS5gtytk8g559eJZSSzYc+Ilcu2M
 ZS0R4vwKeS1nofHKRwc/4Digffp/BQO3FUF050k25zO6X8y8GMRq5Td9GCDGvsvaLbhHVcmcTZk
 JlXdVGlAs0NMvXYAzP3nDgHB6rLldZR6VJHbUiqU2uaI8eKDetVwKjGg2Cj3DYb55hXgvm6r
X-Proofpoint-GUID: JQOhSDzc1KUWJjKX5wy8wbtuO_WP609e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507060071

On Wed, Jul 02, 2025 at 10:43:27PM +0200, Krzysztof Kozlowski wrote:
> On 30/06/2025 10:40, Hans de Goede wrote:
> >>
> >> No one asks to drop them from the driver. I only want specific front
> >> compatible which will list and constrain the properties. It is not
> >> contradictory to your statements, U-boot support, driver support. I
> >> really do not see ANY argument why this cannot follow standard DT rules.
> > 
> > So what you are saying is that you want something like:
> > 
> > framebuffer0: framebuffer@1d385000 {
> > 	compatible = "qcom.simple-framebuffer-sm8650-mdss", "simple-framebuffer";
> > }
> > 
> > and that the binding for qcom.simple-framebuffer-sm8650-mdss
> > can then list interconnects ?
> IMO yes (after adjusting above to coding style), but as mentioned in
> other response you can just get an ack or opinion from Rob or Conor.

But, this way we end up describing MDSS hardware block twice: once with
the proper device structure and once more in the simple-framebuffer
definition. I think this is a bit strange.

I understand your point of having a device-specific compatible string
and also having a verifiable schema, but I think it's an overkill here.

Consider regulator supplies of this simple-framebuffer. Obviously some
of them supply the panel and not the SoC parts. Should we also include
the panel into the respective compat string? What about describing the
device with two different DSI panels?

I think this explodes too quickly to be useful. I'd cast my (small) vote
into continuing using the simple-framebuffer as is, without additional
compatible strings and extend the bindings allowing unbound number of
interconnects.

-- 
With best wishes
Dmitry

