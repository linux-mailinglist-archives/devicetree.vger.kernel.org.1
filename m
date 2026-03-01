Return-Path: <devicetree+bounces-269696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJw+A18ipGmMYAUAu9opvQ
	(envelope-from <devicetree+bounces-269696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:26:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7456E1CF517
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 12:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7227F301706D
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 11:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB52317152;
	Sun,  1 Mar 2026 11:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IoJcbcrR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Eeuooj/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D4C312819
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 11:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772364373; cv=none; b=TXoPI4ZbPhhud/i03//FTGzYDBEXb+pa87n6gBzzujVug2gXAliopJzYuETwxkt61lWD/rJJmwEFulCe5I6vOpeOBwQ7rC5jHlrl02dMUM1XGel15ogCbkYFBgbatmj1JQuHtoENvF2zISfW4ccTterfWto+5cc4rsEx+0b9Wa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772364373; c=relaxed/simple;
	bh=A3pGdafz5TX/RZcYLxqgqmHvNXntWONAmJFHZ1xo3Ug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZ7c2BZOYPlYhZNLPGwBnHS8bmEkYJPH/fOqGs5rK6H6IK7J15utuasGhIgQ9aYOS9j6XPP7IIQrhSf26J7w8INgg0DylGku5tMbJtDoAoPlG4Zt257yVIXmFPCHRFeqeVrANKKOkzIQc6WFS2XwDo4XDqrm+akhwHwBbLlH6AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IoJcbcrR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Eeuooj/r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61SNMiVT3809895
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 11:26:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=QmUr1rTU5LpJYmI9eic/VBnv
	fwQETQhpUNXRgKER80g=; b=IoJcbcrRtIpOByww44k8Wmb7didV9HBwATFnYr6D
	ViAHRvji+yNjDLfo8oinu/Gly+W4DhWpZezO0wAU4YTVugo3JFskOhWEVpCl/SkI
	y7/J59R9jAWCW2mNU39Edy/PnxVwrEisHNTYpMG3p5GZvHDW1HFJLveefVdlC+Py
	x7vI6F/fO4u4b6wy505RQO6aaHEIzXDD5A8kbax6qO06zcHamQC3J9TB1LEJsKmk
	NxpFprNBjRp8H1TlxkzKEs/L5v9rTFr5AsYYBVmeuRtR8yFwT5Rm3Ev+PFAE8Skz
	Xpy8L2CaURFUEmbwQ5UI/n2dAwSDqDKoXHdBz/OdHz6ADg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgrtmnh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 11:26:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c881d0c617so2789611285a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 03:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772364370; x=1772969170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QmUr1rTU5LpJYmI9eic/VBnvfwQETQhpUNXRgKER80g=;
        b=Eeuooj/rqlOsU618zdO+E+mqOuwW5sdgtZJeuLs/06uLxqaLSOI98nxvGz738BEy2v
         ymc+KDBpFJ1hQ7jHlgOKhmcFZil3WfcDjxyTJx2Mcb6FBLnDeA4o27BY47jQB8hEtrki
         ZSI5YskGAyLjjYZYQRaqDXdPfQAfgt1d5hQfEGH295CGRwU6E7sL0TtaY70de1B0jab8
         lsBFQIjJu/AD+uHTICEl30hQ947RUAIU8aadgiCjmk0YZsBOXMi4wl/GenDAxEjXUxB5
         ehJkHIImVzd+SeGt5VZRf7Qld2GQYQr+l0qGazxFK59jPsTFeRnD5zbZxmztx1n3AB95
         YLKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772364370; x=1772969170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QmUr1rTU5LpJYmI9eic/VBnvfwQETQhpUNXRgKER80g=;
        b=S3/Nko4DWP28X8Mq5dyLb0fQmhpu26WRDeDdsB3atvkVLaGjxPbx0GAe0lBRlQXkBP
         rZ52NifClKEX5QOfS1oQHsMdJHBIdAPUGI5+5k8UPxlS2uzs7qO9hRApB6WtoKloKoPM
         E6ONDNbLBkrpfgEn7I0mNeIoLTDovc/MZhZST0XgoxwYw2XWpPFgUex7WSckO4bUSMp4
         kobSnlmNx3Plk8TPmCQnwIIbLXksRtJYiXxafdZcFUigtTHOIsm/5iYVEpbMFbFSNm0v
         EMDpIMZvkrZZh3NmOm/YganOF4qexG/U1Q1pvTXjR3KacLOIYWH7z3V45gBollerMIhP
         +UiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQeLW4NzMB6Fxkq7AC2+0ZT5X8CgauKI3EloroU8KWXNLEDGngQ/oSvQBsn7/aJ4IKX1rgyljltGzJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywrm4rsiejgfH+JUN7V91VIj2hygv1Vi3kIJrA+5Pr2nn6TM7Un
	eSWMGBhHZrhkfjcG2BDwCyn4YZy5CMkvsM0r4mBL+qHYRd6QWpOMYWAO/2Ve0eqmSZsSZuXkXKs
	TqmQPzsf61Jmk7lqX0bjnwhKPbCBFYLtV3mH2hy3eC9Mu0x5tptsnBSLlEwOgZw2b
X-Gm-Gg: ATEYQzw5fON4moR8VE/XDbJLbvnHiP3NT9HKZgiaZlKbD1r0gmqVs796HDqJ0D5mUTp
	WBul6UG1EmRt1O6JP+n/2ML98ui9K/YwYLxQaGfJZFNwSxfwJCoEiu9L8dwD1BB84gYsaM8OiA9
	U14bhmGfrOKyYfVgQ8eSlwClTi0AFNVMyu8XY15mujxXTK6gQGTojOk3KlLmCgY/75rrpdAdXXo
	65zqqP+N5EOWGSx3CLLSbp4hFNKWKweMuC8MBb8B3ytCbFam8wfy/+IX3WjNLz2XFxJLNaFyioH
	1IOY6eyaRLJSeKDVoM3bJ1GGq1sKjqvn5Zhrz16xRFGi17PJ3dtDPDQ3NY09U+2eFYtjic49nWD
	6V1i+AJJdBNYm3aJDcHypH54gRBSbgkNnbnnu2VtOk/sDQy06Zrx8m8FxiZLsfXvMPgM2KZfWvK
	bUXNuPzH+yl7vqa92nKWTwspo3HDvnEzvuGPA=
X-Received: by 2002:a05:620a:3726:b0:8cb:4289:6c3a with SMTP id af79cd13be357-8cbc8e34841mr1096659885a.74.1772364370547;
        Sun, 01 Mar 2026 03:26:10 -0800 (PST)
X-Received: by 2002:a05:620a:3726:b0:8cb:4289:6c3a with SMTP id af79cd13be357-8cbc8e34841mr1096656085a.74.1772364370036;
        Sun, 01 Mar 2026 03:26:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1136acaa1sm1350284e87.59.2026.03.01.03.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 03:26:08 -0800 (PST)
Date: Sun, 1 Mar 2026 13:26:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pet Weng <pet.weng@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth Hung <kenneth.Hung@ite.com.tw>,
        Jau-chih Tseng <jau-chih.tseng@ite.com.tw>,
        Pin-yen Lin <treapking@google.com>
Subject: Re: [PATCH v6 3/3] MAINTAINERS: Add entry for ITE IT61620 MIPI to
 HDMI bridge driver
Message-ID: <iyalnt2hcuqxv5nydtymj3snfbbxo4mnwzze3dyoo3iedh2654@ygruo3o55sl6>
References: <20260130-it61620-0714-v6-0-70afa65923b5@ite.com.tw>
 <20260130-it61620-0714-v6-3-70afa65923b5@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260130-it61620-0714-v6-3-70afa65923b5@ite.com.tw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDEwMyBTYWx0ZWRfX+wsJHhUp1UCZ
 bj+HWtDfrGBlukXwDe/LKw2k8UTQbvXXTAivR1CyghgdWkaRgcCtohvir88oAhjo9f7nHUPzlmb
 lb7ctes25KnYhQxLoz+CJq7D1PA3d2cD+BQNjEYjoj1s4xgYtnZmHk7Rt4jDTpfHqfGg3+ynh/Q
 o8gptsssL1QgTL9cLQ6k4kw+oAlQObcZHgTAb1HlV3za4f5iYqnq0yJfoiSyyJpDDHh20Rg1+Fu
 707b+ON47bEbaf2TqlfMw4nniemZaH97C1X/Zv21bHYlWNiFEFrc72sMSgVT6T9SnKFReLLUyYY
 U2c6/ppk6QzjjNpn4jrkNj2l78U9oYvkfl3tcqpOzbQpHrkXjSn8O99j09jvZbgGNK54To4D5BN
 Z+Krppi+nEJEDQYBw5HS+KK5nk/CTJ2ESch+b20XUJxrFr7QVhhekIXcomfejTl8/ESg28MqvQW
 tbZsmbA6EqQNohcLKnA==
X-Proofpoint-GUID: miSlHndYZVPyBtwyVG5zEEVHPxhqn4YL
X-Proofpoint-ORIG-GUID: miSlHndYZVPyBtwyVG5zEEVHPxhqn4YL
X-Authority-Analysis: v=2.4 cv=Zqzg6t7G c=1 sm=1 tr=0 ts=69a42253 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=e5mUnYsNAAAA:8
 a=Ns9eNvu6AAAA:8 a=IpJZQVW2AAAA:8 a=KKAkSRfTAAAA:8 a=m8IrmWRc0mMpOOsEDagA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=LZLx1i01EnjtqRv10NxV:22 a=IawgGOuG5U0WyFbmm1f5:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 priorityscore=1501 phishscore=0
 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010103
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269696-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,ite.com.tw,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,linaro.org:email,baylibre.com:email,lists.freedesktop.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7456E1CF517
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 03:51:36PM +0800, Pet Weng wrote:
> Add a new entry for the ITE IT61620 MIPI to HDMI bridge driver to the
> MAINTAINERS file, include the responsible maintainer, mailing list, and
> file patterns.
> 
> Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 3b84ad595e226f231b256d24f0da6bac459e93a8..6775ee371aa11bcaa1c45bbf5ea31d4aa5522288 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13504,6 +13504,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
>  F:	Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
>  F:	drivers/gpu/drm/bridge/ite-it6263.c
>  
> +ITE IT61620 MIPI DSI TO HDMI BRIDGE DRIVER
> +M:	Pet Weng <pet.weng@ite.com.tw>
> +L:	dri-devel@lists.freedesktop.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
> +F:	drivers/gpu/drm/bridge/ite-it61620.c

Squash to the previous patch?

> +
>  ITE IT66121 HDMI BRIDGE DRIVER
>  M:	Phong LE <ple@baylibre.com>
>  M:	Neil Armstrong <neil.armstrong@linaro.org>
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

