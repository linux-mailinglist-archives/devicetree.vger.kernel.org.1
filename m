Return-Path: <devicetree+bounces-205396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE1B28E30
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 15:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1D69B017C2
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 13:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65ED62EB5DA;
	Sat, 16 Aug 2025 13:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kiFVLGCz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15ED2E9EB3
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 13:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755351672; cv=none; b=px8czW/FAL2n0lg9pcWdw2MjJwSXADfjXyez0G1ieIynCLv19j1f8veTyc0LGKZ4nAqBxeZLf96npTpywRaexGlWBGDmxbxtKO3Dpa1bbMlNKRO3Tpy8KkJtBUVW5pBQacjzVJbvaMa1e3CY74CMAgvP/rnTmj5xJWuTAaTxfhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755351672; c=relaxed/simple;
	bh=88GiwkZKNCDwLk6eXHAa0jmgVZHYyj0WA8z7+AIxL0w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iEAsP8koW+SskiS3irG5ZtlWVX1OKhGr7+1VgQT2tM02CrivY0LLTtgKqziyP19AHfBpYJ/CNiD0dtpqx/Hw/XDCIM8BEdnWu6VLUHBQODNpLLLmCbcfKeeeqBu7i75Eg+G9Mne02N/lsRmPs1wJ6TgGW88kv07AmZ8hhT6hGNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kiFVLGCz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57GDPG4N030727
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 13:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hqvOIjDAPfjbJ7ekdh2Wrz7OtFU5MOufOc70nYN4Aks=; b=kiFVLGCzDJmzm1p2
	wGcKx3n75MVDAA3cJpW6gZa2HGrFZcdvkL2p4d499htRp3YmBs/HMkJP+/w5Dftw
	HEm0K/WbZ2TQRrZMh/sL3EPqGTM6FnifA4+kF2A7f4d8C80oTt5Dz15iC+tYvy/0
	YtxxOoVmcQRUKAxJyMBxEQxKOcloOJ7r/bRuTJp5MdSrlHBIf/iBajC2iMX+QYNz
	AgA1QBnyo0xGNK2omPbdQrmbrQfx1yG8hRs/IVbdONheSiU88BhrcHTuLILGMd5C
	8kMXX5NzLJidANjVtBy52M4vfc3tgTfytoOKrBqri34NpbIcWbVqKb4gWV5w5NNI
	AbobNw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jjrfrn5j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 13:41:09 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70a94f3bbdbso58153446d6.2
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 06:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755351668; x=1755956468;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hqvOIjDAPfjbJ7ekdh2Wrz7OtFU5MOufOc70nYN4Aks=;
        b=rWiWU0UWbf0klNv2jr8hb3m2wTiu7BNAUB2nDJGEWH7WMXGcstyH2dAK/gmYNqDP8w
         128OACLF0MpwJbRC9peZi1c/DwShMoOEd7UUQp2yuPNZKDh+h7EEXMouiUvBZJn/T9GO
         anckYeK3MPFEV51WxDHx70d08s+flYa6BAD7hKAki8jEsqg1Sajq/qm6pjlc9BBq1Gc6
         uzG2KWbuMg+jzi9DWD7tthjL+0R+Hk9KZLTAm4i6AhWKHT0XpWLICVWJ4M1/00ijzNz1
         E6PB7dzpe2Z/WiRMfyXf6ImutkE4mZdifL7eHDDF7Y4FJPBmXi+ESmmWPtKyq61UNQc5
         N5yw==
X-Forwarded-Encrypted: i=1; AJvYcCWyLMs/04AamXcJZcZkjUyNoB47xjqY9VKAsjHg2H4WHndgxgJEmoaNmt+OcPe6myUJxLWUXHYnJWwN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/6KSVKHg0ABh4jfx/3fbtzBb6AoqG13jgWXRW6FFhFrxDnRRr
	cBLDN+YJ1OwQWcYByof9xNpB4yYMR+5mCbxIU5is5C0z4gUFiw94oZfcj3XLCUT/KdtZvVs/luR
	7izKwNQcozyf1Klgz7Zmx/MsMrEaeMlN6Sz5y1xIFF8Nwag6R3vcm8ooWcCZKFrJA
X-Gm-Gg: ASbGncu2cr8RA9DfMQg1ynEtARhpN39MQRWFZ8UZCrHyB7V4TVSvCngUWkwnBDfKRqL
	IIxdX2x4/CwzZuMSWQ10in/TI2YfXZfSgqB5r6LSNnWHENBEn7jTfrnRBGbPZrBU3B9fzgGzcKO
	teTcl6zcfSf6Re/sdZiTHtigztEEHmT4EPmEQhLo0ImuZ46Rj08QxH4AEnyboGADz8eCkjWXST5
	wzZ+1hYEstxGY19641fS94iM0iFQ0EJ4qema2RRhYEHOWzpl9r7VYvo9XHnS0J+ibXluAZ6NlQw
	Ncc2h2c4UXh+V4zlsXj6HkwaOHqQKqefEYfbKaGeBHr5FSpGUk6zhRgI21OCAAQ8n1y1K+7yb7X
	riHD11fgsUe8tejm+ztrvY/LUsjd/WMuTJ0aetVKH+PasnxHJJuHI
X-Received: by 2002:a05:6214:2584:b0:707:5671:c95e with SMTP id 6a1803df08f44-70bb060b2b8mr33508826d6.27.1755351668506;
        Sat, 16 Aug 2025 06:41:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbdWW1cI4h4USqekauYtnWURjxz4AY4R1pFpb3Rh8HerRaOk8RjnRwNH7bTYXS6VfcvXmb9w==
X-Received: by 2002:a05:6214:2584:b0:707:5671:c95e with SMTP id 6a1803df08f44-70bb060b2b8mr33508556d6.27.1755351668039;
        Sat, 16 Aug 2025 06:41:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a625b9dsm9979421fa.56.2025.08.16.06.41.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 06:41:06 -0700 (PDT)
Date: Sat, 16 Aug 2025 16:41:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: add initial support for Samsung
 Galaxy S20 FE
Message-ID: <464pyyfa3wtwmismlwizaxsdt2edt4flik5cxatjo34pldsk6c@bz4vzdcefcnr>
References: <20250815151426.32023-1-ghatto404@gmail.com>
 <20250815151426.32023-3-ghatto404@gmail.com>
 <xmxo5uogkexiwq5zh2eza53pnl5jrqidd7an7bftjtq4wpaup5@mlekuufdbg5v>
 <31CA09B3-E451-4EC1-8273-A1F09735D1FB@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31CA09B3-E451-4EC1-8273-A1F09735D1FB@gmail.com>
X-Proofpoint-GUID: _0bgWpeG03xW14eeLujrzEWXAe_dKlYK
X-Authority-Analysis: v=2.4 cv=YrsPR5YX c=1 sm=1 tr=0 ts=68a08a76 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=MQc2VpArWmwKgF-1X_AA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzOSBTYWx0ZWRfXxdBkM1Cu5/8A
 GlSoS4u9hYX1+vTVrUn3cv6W4XRulL6NN0LVm51DT6voZ2uaGpU/+ioS3RYZ/roLsgyWQO8Xbzk
 uHVN7Zp/hs+Ph8Uy78DeT+T49oZDKRt4b7S6b6+GiNdzG4s18d5rfn955tayu8+dumurDpK9Pan
 Myqk/LKhmhEIhXRum4RUSCS65A24ByDbXrVIGkW/KAclvYlxkqPXORWJKPOIJ2kxQM3x8lfZqTS
 rRyShYfqURezIKjDXBvFvdFvaV8ABwEjYzMyeH0O8EtxyhN3JXlFU6wHeU+TwmNDNl+SVp9xVsk
 ODSZSNM14xDh5mxeEtNI9MfWcN6HtkAlHLpHLJP3SbeKzy29EW2CJ4gRj+ZurmH39UUB6GSHRs9
 OcxoV8cj
X-Proofpoint-ORIG-GUID: _0bgWpeG03xW14eeLujrzEWXAe_dKlYK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 priorityscore=1501 phishscore=0
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160039

On Fri, Aug 15, 2025 at 08:28:32PM -0300, Eric Gonçalves wrote:
> 
> 
> On August 15, 2025 19:03:20 GMT-03:00, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >On Fri, Aug 15, 2025 at 03:14:26PM +0000, Eric Gonçalves wrote:
> >> Add new device support for the Samsung Galaxy S20 FE 4G/5G
> >>  (SM-G980/SM-G981B) phone
> >> 
> >> What works:
> >> - SimpleFB
> >> - Pstore/ramoops
> >
> >While the patch is correct, are there any obstacles in enabling more
> >devices on the phone? I'd say, buttons, remoteprocs, PCI and USB
> >peripherals should be low hanging fruits. If you can read pmic_array
> >from debugfs/qcom_socinfo, then you should be able to identify PMICs and
> >add corresponding regulators too.
> >
> >> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile             |  1 +
> >>  .../boot/dts/qcom/sm8250-samsung-r8q.dts      | 47 +++++++++++++++++++
> >>  2 files changed, 48 insertions(+)
> >>  create mode 100644 arch/arm64/boot/dts/qcom/sm8250-samsung-r8q.dts
> >
> Hello Dmitry,
> 
> Recently my device's battery stopped responding and I was not able to
> work on the DT any further, so I decided to upstream what I already
> have so far. Thanks for the feedback, I'll include more features on
> future patches.
> 

Thanks!

For this patch:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

