Return-Path: <devicetree+bounces-222865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F26A1BAE76D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:36:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0343322047
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5947328851C;
	Tue, 30 Sep 2025 19:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UI9gjTBo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB07723236D
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759260962; cv=none; b=gLxDvRMCubo2TpvuDNf3wetvuQVrl8ssNTDd7nxYvhWfQsyES5+xP2CBPF4XH4LgDQqFk7hcQLwiV4/+ghwrxIkJmRqtCPSvTdV13sG81fa55zLK6ViCIXBjjHZMvmfFTOhVP1cRuJ4QDVknXZtLW3d2R5Xp7NXINUMWuBCTFns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759260962; c=relaxed/simple;
	bh=Y6ASMnKN0lRfzqLVf3QZa9bH1LtfrSUCRUokUivLfvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XRKkeg/pOBcw2CXhv6Y1DPtrnlUdMHg3oekZ1QyWfTfFrsiIEpNMWbktWKlZGZ7yEBE7RFbRSzSEivZyZOYHq0s8wT8dJh8JpCPm9LeAFAyBtic77EyQQPISNfYWqrEXaHW2knCWUOxHiuX69swTnxPNMAdVGEM+uuoialUi+qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UI9gjTBo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBpOTb030609
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lvj2v58WhaULcHhKfkj48JWEN5u/Hdq652Y2OxF3nx8=; b=UI9gjTBoXPG5FqK1
	i9EZzEPIBe4cEDqnrdysIx8PJIqOevx3NoJXnRjIohzIMMjafGjLtNHMiLg2OvlX
	ObpiXVh4VE0LWHyv8MoHsBIjRg0HQUmyq/8WNkm/g1XOpnRadVt3vOwQzhhby6GX
	1NzgDujWs3kbAf2Qujma3/qNDL+F2J+ewQ+Jj4tF/z4LrsE3wwUPr9gp3ygQxrAw
	bv5RiBOk+ykEygkPA5yiaOpanR4I5pQPeycLkrYvSOLCDRuNTeNf34pqtSkiRQMA
	bZuN53R8YM7jKqSzZHHAtKkPz+8YRflLot4cgYN0DfSBad/6LsCznUoSGrGK3bDb
	uB/Tug==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdj0ed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:36:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d905ce4749so125733221cf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759260959; x=1759865759;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lvj2v58WhaULcHhKfkj48JWEN5u/Hdq652Y2OxF3nx8=;
        b=p8pdQxpUuw4aJHKEbISFguuDBjW9yT9AY6bDgY5bpGcXOS+E/3eyfVjGpqZK93Vp0v
         frXRj7XSdiKSN8uY9wvxyJKxg7jyCC/bZnRKrnqiw9LCl15gWmRmDpg3wMfPdRcQ/Ulm
         aHc3Lso55i/F9VDLGInNPFirWJnAVUNyGJ+GFIYRu+b88TCZE9qH9ydYrTyI9qenz6pb
         IOLuWH8JBG2IxtxCmJc4IyaJFKR1Ea4apQDyZcfzhoYSjf/gDM9+CWwWyV/vm0cKCU0w
         pH+LauOajO6nJiOVyb9fT0AkxrIJejP+EspIf3A++Nr5sRz0syAYfAgzLzhxmV3aBj/Y
         54Qg==
X-Forwarded-Encrypted: i=1; AJvYcCXpYFz1FW75e03Xpb1Q9r3017fdpPcGL9I0u+43xWXuPzlfGe1el5WNWgVNpDos1Vn9GbsuDrWCQB/z@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1CYgyMUGokL7R/8SULbBHSkJHJ8UO4Ve1SGFl1itle0728bpu
	hIUJW6eD79y1O1np0Mp4JN5vShG6CCQXJV5NSCeKacIoZH9Ddrc3aIY1202QTX5yGtfX1MhZUGV
	HjKUpnAK8GA+uvRVTzUUUfd73L0rD+FB+0qZi72Ml9mWwHX7Oi6UFmz6Y0a2bdMdw
X-Gm-Gg: ASbGncvqHI21541EeGNfmH/ykx0t/N4ItBQ/4a1nBnpjx1fyxUJQRDzfX6hRdl5wQpi
	CrVD+PUjqvg+V/Nzyoh6G2idHYXMQJRflIuGXZ+7OTSpyxeedmGaN0YECQuyxfdulP/NSOVuHBp
	a/gLt7bN2OYE3x0LgDKn9vTQtBnJQUq2/aFBEGJcuJxSfSo2zse6yelJ6LrL251B/aVFhckhZ/U
	9LsUW05KNVTSzw6y1Z/EEjDnU1U2Qt7dphMQKGCUEWMnfRCuH4Cd/Cesvd5nzLLN2gvUH8r6voe
	eujTp4bYcjcP9gCaShr10TLXf0esHEMXtVbqFGHt6e1NvV6SExMNVwp3XEUnCdUYhlA8OY0dwor
	6Mq5oiEzG4zNbW1I0WHoVM6ya/DU2uBO5KhOSiuYKxaf6pUuMiPTIm5EQyg==
X-Received: by 2002:ac8:5810:0:b0:4e0:76b7:35d5 with SMTP id d75a77b69052e-4e41c733499mr10629221cf.33.1759260958627;
        Tue, 30 Sep 2025 12:35:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkNxeFgWyXeWrWIAptA6yK8icuvlqTlnU99wi9RboNE56Zpsc59WiRM39V19vXyZGsqKMtwg==
X-Received: by 2002:ac8:5810:0:b0:4e0:76b7:35d5 with SMTP id d75a77b69052e-4e41c733499mr10628561cf.33.1759260957894;
        Tue, 30 Sep 2025 12:35:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58737e32f5csm2282387e87.0.2025.09.30.12.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:35:56 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:35:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Douglas Anderson <dianders@chromium.org>,
        Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
Subject: Re: [PATCH v1 7/8] gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI
 panel driver
Message-ID: <rcx3hpufjmrpzp6tgl75qq5rmk3bcxa6dahl2egpgubu75bpa7@bouekp54w2gh>
References: <20250929142455.24883-1-clamor95@gmail.com>
 <20250929142455.24883-8-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250929142455.24883-8-clamor95@gmail.com>
X-Proofpoint-GUID: I1EKTrFo3HhyEhxF8dmJ2y-AUM_zKYnc
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dc3120 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=sfOm8-O8AAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=r3kgLuTu-6ezLa8AVuoA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: I1EKTrFo3HhyEhxF8dmJ2y-AUM_zKYnc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX63A2Wl6A73RJ
 xSzJlxpeZFb6qfH2nf47voQ7szRv07XKiHSPZZ7htUVvkdgh5JjM8zI0jTFKts8yi6wjPNhdloq
 va9QGy0fjRDr4RUyzfZXNp1zYDhWOl8j7EoWs1ksI0z5mDPXpslNY/xQYZc3EZNf3hQOtZXzJ8+
 oK3BDVmZT6YOaASDsj/z85RojDesa2xPYyiuopLIdvAbW/QVqkIkie+JAyzE0Z35hsqb1R0lmWp
 dhTK0d3d/M1DkaCMIn9+OCg59PR8OzEmqLvhrSCIuAFw+js7kqLTAr2A20g+hGVv1S6CBuvIswz
 WjjY1kaBXG0tVq285oEf/8xMl7ERo7YX158NOM3ua63EP+EumeMRIJbIsQ1ka5ZYVw6pmAorxfv
 hqpqK05XSr/yE8e/DljrXgaMvxiz9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On Mon, Sep 29, 2025 at 05:24:53PM +0300, Svyatoslav Ryhel wrote:
> From: Anton Bambura <jenneron@protonmail.com>
> 
> LTL106HL02 is a color active matrix TFT (Thin Film Transistor) liquid
> crystal display (LCD) that uses amorphous silicon TFT as switching
> devices. This model is composed of a TFT LCD panel, a driver circuit and a
> backlight unit. The resolution of a 10.6" contains 1920 x 1080 pixels and
> can display up to 16,8M color with wide viewing angle.
> 
> Signed-off-by: Jonas Schwöbel <jonasschwoebel@yahoo.de>
> Signed-off-by: Anton Bambura <jenneron@protonmail.com>
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/gpu/drm/panel/Kconfig                 |  13 ++
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 ++++++++++++++++++
>  3 files changed, 193 insertions(+)
>  create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

