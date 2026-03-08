Return-Path: <devicetree+bounces-272623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGtUOrrNrWmL7gEAu9opvQ
	(envelope-from <devicetree+bounces-272623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 20:27:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AD1231E81
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 20:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E95853015A75
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 19:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A4AA36CE1B;
	Sun,  8 Mar 2026 19:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oFSPuFoJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gC4GUuU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0061F30CDB6
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 19:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772998068; cv=none; b=MAm3T8XHwBMr1kYbZIOJjRLRS9jiTgx2yB5i3xRz4qv5kgz24GoS8PVOY19iIkw8+Hce9i5uhfGKj1HSBcfaNCMQmMSVk3ofm7xAZQYoAbyJW5deaxaCDs4MCJVdgOnOf2H0ZQgux+SbMUIu+UNG/NmNkvEw8gTL8+2Q0yHYnaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772998068; c=relaxed/simple;
	bh=/7Sn8DxPT3KkxIrltZkAY2FehAZ3oqRtWCKEqwtg1bg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YHJdUPu+t8OFIlCzLqQrIDE4dfYkb1aKak6AwQLFxegILwPStDPptmPBm1DO4lHk+xqKtDd/MFK1zLQ/WfRyYCcxbVw45Hx2wroZuzZqCDzZvqyDS34w+5f7WCnyAstukgPyDrIX88hOs77IKFivu9M2gAL+pLBfeQptSUSWh+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oFSPuFoJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gC4GUuU9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 628ISH4V2021578
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 19:27:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yvhx0hHAKfkZNVagkFb9Vhg0
	n3xxbR9f3Gh39D0w35g=; b=oFSPuFoJloQVraPqj+MjVcOxkYVlbs8mVdJ6pbYq
	t60RM9jHlPydfzUeO1VD5BBK3rZJvLE7Q3kEeRrFFI90Xy8boYK/Io5jzByRPfgq
	4P9QdpaXfnW+BhKsHOTAdo0zGO20xSNCilUDAX/G//kFdPjsLP1zcZ46gqHnkrSn
	5sQo8rjd0PaWPUDvIAdRzQzeYzIqtY/sunn1lq6DhzjDHzH+nGwxLNZp192YqOOe
	mvzAvK6aEkw8i3/Rwjd9lLrGGKvZLzkFXuaIJbuH8V12q5RZ7iThQcrfpAEuHVPr
	I6JfordXVPvYpdCfPvqRt8u8cruwkY9qR41AWurll0LRyw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbbg32qv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 19:27:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd77e5e187so790197085a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 12:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772998064; x=1773602864; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yvhx0hHAKfkZNVagkFb9Vhg0n3xxbR9f3Gh39D0w35g=;
        b=gC4GUuU9ok/uNNLP8YtnFix1vM6SrsY57Yjv39VwD8Qut/R83o+6RxKCIIMvpfSPlq
         BdwfNWefL2Qq0hrZEUxAfOqfpSbdoGqxFOQ6BZmKbu9qBbGcOvObnAm3CwbVMnNx1tXQ
         lgTf5ABkd4MBYhCUPwzsiRd/e8zqRbKbaGtcavMQjunHRrEgUvkj8yEZxrs208pxO25U
         sgGn/qNrSP+18qp6O9+33wknsU6r25h7EvDBJ8qkMG2H1OWZ0qNlvS2eWbq+QOsQzE8F
         vQ0RE6le3B49JUlw9jjyjUmIVJS/LIpqgaWIM6j5phvGSujH05V8TYAXyfEG8vJG/VbV
         VCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772998064; x=1773602864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yvhx0hHAKfkZNVagkFb9Vhg0n3xxbR9f3Gh39D0w35g=;
        b=TIr6EjUpzpqTNUS5LObhNBhQAt5UTNkFzu+HeVOv9qJ+5/f+gXGnHY8VdrSOhmkFkc
         xjs6jC/W0pd5FA7r2zn49jdCQBqq4truZFpeuKopZxi7LItulsGgiot0LyJxxPsxdTkZ
         EXbIziQ3FFh2odBCAJnQ2gpVitXRE3/PfnaYrtxJJE0za9kWnBNl8fJEsKh8IyNtchZE
         VXvLqEcamVIkFaptly869PBjSqMDKKy+eSUln1cx030e6YmRwGEH7bLYt5Qdx0rhB416
         IO4cggJ6oIx90x3PMNenNpGDaVvd2oGx+etxLq4/Glm5uliVIfTnAoex+/jmcTri5FAB
         7eWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEH10Q4q+7VAj8TqeKTW8ubjh9hcDAXaRdfAiFgMdKvucn3pLq/lMinYcxoOqAN6smBN4bg+PwT/ka@vger.kernel.org
X-Gm-Message-State: AOJu0YzT6xsGvLQZOlpOgms9+dzIVzfrmC+M4r1t5pmWazME/dK5ajex
	m2Fu1M+MA05rQuqLy9mKzUbLDRv7LxVgujZKGB9C7rQF9iBYzb3k4e5qPJL9+JEx82V/pas8j+X
	bejLpGx4oi7m4h7tpUoCPMPrSJixkoBVV8cjjEygEPYNfNVR23gUpV/E8nn5GhhrT
X-Gm-Gg: ATEYQzzMsYk9Er84FuT3J9asW2u3D9oW6jjmA90+iVhK9/o6cxMgNKpAQsLyu2EeMSg
	tJtTsEmqqRbxg8bi8920wygjlJP57YnFUvJnAncAAmBdFK46HRQVIQxaPsoyhe71VrIQst2b4yJ
	j/RmN9G7GgI71u+nE0qAStACPzE4Lai47VNtz+StuHvUHsKjdKoi757QbsnhV9IRkJ3/3Doapnz
	/z0OCjTb2UxS8aDr0zsu6CY3VBBdtyl3+2y8ErQL6YqhBDWMXqq8z3N4aNobbjkU24wjPfTjiIx
	CoUSS7bwTWDcW/BSpc+BzdWS4xJ6aVRGY7yo1kl1UyF/RY1tDk8jc39NAD0aU55gjg4PCtM+kjx
	Qmc3XEsmYjbbeSEH1Hd4//suOYM8RW8K8e1rRrX79oiCZZuwtSxYaEUsrWpB8DoJAU9zaX+7s4i
	AjT9WhD7wUUIOeSsnznakCvkQqfJyDJ381pTQ=
X-Received: by 2002:a05:620a:4bc4:b0:8cd:7cea:ae9f with SMTP id af79cd13be357-8cd7ceac583mr374001385a.36.1772998064076;
        Sun, 08 Mar 2026 12:27:44 -0700 (PDT)
X-Received: by 2002:a05:620a:4bc4:b0:8cd:7cea:ae9f with SMTP id af79cd13be357-8cd7ceac583mr374000485a.36.1772998063516;
        Sun, 08 Mar 2026 12:27:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d03d319sm1603817e87.38.2026.03.08.12.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 12:27:41 -0700 (PDT)
Date: Sun, 8 Mar 2026 21:27:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: cristian_ci@protonmail.com
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/6] drm/panel: Add driver for Novatek NT35532
Message-ID: <kvq4py5svidg7c4tu2kxwpj6fnsod66kq555pwchd44nfdjejk@yvpk4ismso7r>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-2-aa2c330572c0@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260308-rimob-new-features-v1-2-aa2c330572c0@protonmail.com>
X-Proofpoint-GUID: pxxcku7Qs94CQYIbOMxVH3HBFszdC-9s
X-Proofpoint-ORIG-GUID: pxxcku7Qs94CQYIbOMxVH3HBFszdC-9s
X-Authority-Analysis: v=2.4 cv=SumdKfO0 c=1 sm=1 tr=0 ts=69adcdb0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=sfOm8-O8AAAA:8
 a=VwQbUJbxAAAA:8 a=43JGVj5kcgoAPVrWvbgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDE4MCBTYWx0ZWRfX/lWDoiE/xLY6
 3dGa/PUa3j882AAjjjY9Nubd+8z5RT9rZiWLWZxwrIRcWki0W2/VZscVKOPPDrQc1iSP7rD0vEw
 7dfOV23rYgthtq/bg6DzZJk9Z5PLBRrnn8pV1AgpJ97Q18oBGjQxyPtELHrOdiuXDyKv0k8mN9W
 MzGRw1A9laCWbhNFtH5iK161xjL8ggdFa1PGSAYHB2uRRYtund4ZO4giVy9S97DLiMJj4uvLrdK
 gO5LK47Uc8PKpkH/TmB4oPLmIqm4xW5Pu1PNMQ2KHGqZDqtpYhja3DanoaKiBhiSMg8sLQMv0FN
 hl/FdyGfQOlyf7fuvyMKzkTJen9ANS9bm04kTR2UKjXEAteuWVJc4HNx8kmyZC+RyGeeLkzpdJx
 prW70bcNoC6PA2h2mCDf++ZUYXKPCSbuVeVr0HZapTnHCtfzXHrwt+piephZjf7Ij3nsHh13l7i
 8hYmwvDl4LAcUsi20iw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_05,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603080180
X-Rspamd-Queue-Id: 73AD1231E81
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272623-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.988];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 04:52:42PM +0100, Cristian Cozzolino via B4 Relay wrote:
> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> 
> Add support for Novatek NT35532-based 1080p video mode DSI panel.
> 
> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> ---
>  MAINTAINERS                                   |   1 +
>  drivers/gpu/drm/panel/Kconfig                 |  11 +
>  drivers/gpu/drm/panel/Makefile                |   1 +
>  drivers/gpu/drm/panel/panel-novatek-nt35532.c | 767 ++++++++++++++++++++++++++
>  4 files changed, 780 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 12243feb0b27..d854804dc8cc 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8143,6 +8143,7 @@ DRM DRIVER FOR NOVATEK NT35532 PANELS
>  M:	Cristian Cozzolino <cristian_ci@protonmail.com>
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/display/panel/novatek,nt35532.yaml
> +F:	drivers/gpu/drm/panel/panel-novatek-nt35532.c
>  
>  DRM DRIVER FOR NOVATEK NT35560 PANELS
>  M:	Linus Walleij <linusw@kernel.org>
> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> index 307152ad7759..4eb9691ab552 100644
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -500,6 +500,17 @@ config DRM_PANEL_NOVATEK_NT35510
>  	  around the Novatek NT35510 display controller, such as some
>  	  Hydis panels.
>  
> +config DRM_PANEL_NOVATEK_NT35532
> +	tristate "Novatek NT35532-based DSI video mode panel"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	select VIDEOMODE_HELPERS
> +	select DRM_KMS_HELPER
> +	help
> +	  Say Y or M here if you want to enable support for Novatek
> +	  NT35532-based 1080p video mode DSI panels.
> +
>  config DRM_PANEL_NOVATEK_NT35560
>  	tristate "Novatek NT35560 DSI command mode panel"
>  	depends on OF
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
> index aeffaa95666d..f2b3d9b7abee 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -49,6 +49,7 @@ obj-$(CONFIG_DRM_PANEL_NEC_NL8048HL11) += panel-nec-nl8048hl11.o
>  obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3051D) += panel-newvision-nv3051d.o
>  obj-$(CONFIG_DRM_PANEL_NEWVISION_NV3052C) += panel-newvision-nv3052c.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35510) += panel-novatek-nt35510.o
> +obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35532) += panel-novatek-nt35532.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35560) += panel-novatek-nt35560.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT35950) += panel-novatek-nt35950.o
>  obj-$(CONFIG_DRM_PANEL_NOVATEK_NT36523) += panel-novatek-nt36523.o
> diff --git a/drivers/gpu/drm/panel/panel-novatek-nt35532.c b/drivers/gpu/drm/panel/panel-novatek-nt35532.c
> new file mode 100644
> index 000000000000..51ba548d0a8b
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-novatek-nt35532.c
> @@ -0,0 +1,767 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Generated with linux-mdss-dsi-panel-driver-generator from vendor device tree.
> + * Copyright (c) 2026 Cristian Cozzolino <cristian_ci@protonmail.com>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/regulator/consumer.h>
> +
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
> +
> +struct novatek_nt35532 {
> +	struct drm_panel panel;
> +	struct mipi_dsi_device *dsi;
> +	struct regulator_bulk_data *supplies;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +static const struct regulator_bulk_data nt35532_supplies[] = {
> +	{ .supply = "vsn" },
> +	{ .supply = "vsp" },
> +};
> +
> +static inline struct novatek_nt35532 *to_novatek_nt35532(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct novatek_nt35532, panel);
> +}
> +
> +static void nt35532_reset(struct novatek_nt35532 *ctx)
> +{
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +	usleep_range(5000, 6000);
> +	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
> +	usleep_range(10000, 11000);
> +}
> +
> +static int nt35532_on(struct novatek_nt35532 *ctx)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> +
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x01);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x6e, 0x80);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x68, 0x13);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xfb, 0x01);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xff, 0x02);

If this goes to be resent for any reason, could you please insert an
empty line before 0xff, 0xNN wries?

> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0xfb, 0x01);

[...]

> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x11, 0x00);

I suppose this is MIPI_DCS_EXIT_SLEEP_MODE,

> +	mipi_dsi_msleep(&dsi_ctx, 120);
> +	mipi_dsi_generic_write_seq_multi(&dsi_ctx, 0x29, 0x00);

MIPI_DCS_SET_DISPLAY_ON

> +	mipi_dsi_msleep(&dsi_ctx, 50);
> +
> +	return dsi_ctx.accum_err;
> +}
> +

-- 
With best wishes
Dmitry

