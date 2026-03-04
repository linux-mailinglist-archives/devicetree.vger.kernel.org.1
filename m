Return-Path: <devicetree+bounces-271207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFADFnF5qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:26:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B36EB2064DA
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F1F6C30BDEC4
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944FC3E5EDC;
	Wed,  4 Mar 2026 18:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PeJii/8C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B0E3E5ED8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647484; cv=pass; b=A5/pjys7QnEPSALdq/zNSkLCdoEeAx1QuAbVxxaW4PpcJmtzpmrNpfnnV/JOo5fmrIwefMRrxnALCbWHMTB9QvhT+SNRYDpA1ZiPMjvc9h+x/+TjijKvRD1Tgflc6CA6A3nmFQVs4UEqDgkKc3fB8nYv6RAnEfnX3G8XQGtBXGs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647484; c=relaxed/simple;
	bh=oN5NGIJInR5QcBWc5Qvk+T8OoVWKRMzL5TYgJ3nAL1U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EMPnHwggaj3E2HB5VLaeO6C2bq/r43dwJCESzCOhXnzxmLtUtt/hWtMlt0ehAuh5T08mSgtv1z5TKboFjGLQtZP3QnE/QK9touKYxzDx4eOZ3Io1k6EaSRhfLjfN4rKWi6fvMTTM9w32AoA0AtlbImNAJ8pQPDyGa/zyrB4qtqQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PeJii/8C; arc=pass smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b6b0500e06so8810175eec.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:04:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772647482; cv=none;
        d=google.com; s=arc-20240605;
        b=Sv+FNdzemZL618L79T9lWBnHwG16Cmov7UlbhWPw+DGeQNCHBp9gwuUF+Yza5FKjIt
         AoEwQPzX/MaMvXCIbsak22qCmkSduL9gDCr+5I4F0GDrINj8IP7C6BIbaIL1IaRkAxPd
         VVVauPL3qVEG87YygTTeu5kndmGdmDVbwdPeK0zYgcDO53qPbVhCBPLtvzcT9ecIPRm/
         YgYlgbtJbFJpBhNj5qzeRI4jXZif/GcmvPpDKb/5HEM2QuyJURdKJ8o553hMN1Afbtz6
         lT41nFm4bgRIuOukw0LOacxxhsGYJhrJAOmencVUe7T0V6ksDyxmzKARHVUUbHlXKbuC
         SM3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YUW1z33hdtfbSwh+C6wGyvDQ7mFLxb1NGbmJMsFO238=;
        fh=bf9lSNK8DuKG6iwUoxf/bLY+PVVSPAXSrVweV0cDrCQ=;
        b=kjlZTjli8R4m/Vhp31UPFnj+r0ABz8Dz7NyBn2Bj1+Fl1/vacXwH/EHkplUq9jwJDb
         UA/5JBoQ+2eYSVKyYOOQrWPvxFxXI91PM1u1FF80daHqZW2k3v5f/Tokr6eLl4RePw0v
         BuOsWBkW351PUlg5oAp8w5uVSVUryLSJSgHRiOODAt2j23awsFpXCxQY36/NJLcbwGmJ
         xAHKnD/SW0rsDdz7hXD86i7r/CnxzYyILn+o0GFwTkgg0nxEmOebe3zJAOSEA0sAmXEP
         qIKpvhSi+kUyNBKqnppLYHhuQqCjdI0A74BKElvdnGQbStdY2mbulim0TSPKGVeyqki4
         1QaA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772647482; x=1773252282; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YUW1z33hdtfbSwh+C6wGyvDQ7mFLxb1NGbmJMsFO238=;
        b=PeJii/8CDfMFfJISVAUt+ngDBTYSbEhcSyQ3YUdN0bkjURCFOLLz1hI4MPf+NkVtzC
         ESGGCcB17sv4RgLkwdh0hfYu8JrcaMxf8ouA5fEJgOaG3V4pENbBBFB1+CGn5EZDH8ae
         Y4nlx1DZ2o7vZ2BhrM50Jk0iMiVe0MzDycdIGc5amBC4fwoB5DOxipJk7RskpT1V2TdI
         6oddftBC1yQycQsQ2I1iC7HFTQozYmOM2/Xk38bN9aIJ1YDEqikCddUteiqweALd1Qhk
         KslxDAaoFMnPoBIiDxwB6njZXMGBwCajYfD7EKwQE1aZr7fJV+n0E6clGF+7gHwzzW3W
         3jHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647482; x=1773252282;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YUW1z33hdtfbSwh+C6wGyvDQ7mFLxb1NGbmJMsFO238=;
        b=gqxp0wS9IBLmCKMZ2GsZvIOzG9JiE/GVH0J0aQraSIew2DvHFR5acGmNzTKaLwMDUD
         uk0W0wmofs85ouXVpJDmguIi3h255RH6BLw4CQPiNCYc0dwzBCRyKUcQ5trb+zYyPX0a
         +6O0Q5Zvhyozfa/yiJWvLypuvjk+zz9yh4N5XFHIqotmlZoEr6/BDc20Tdf1EtmGskAr
         MggkvMU7Lm2Z032lSj7xvQ9p66cQyXSC7EVZYV/JJMlH231XQBO5WF1oqK226o29Hihu
         6g6OQ/1Ifljh7fJ2n1u9rUW4fpMUjnYIWvFtMyH1HrdKG9Y6s00GJQwMaVuvnp3YbZ44
         RgFw==
X-Forwarded-Encrypted: i=1; AJvYcCVtDgG/jJ7E7IoIRd06BNHbNU37qniuolsVU+/CeRlQRVFkx+6abfH1NDBQ7qgljgeAbkmC1TZzZaWJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2eZ8ZjsYkny3KnuHVIeWRXuDLLDvtiJw8h0StmW8UUQaINN6f
	Du7ceF7DdqfzuQGWKAEop+mr78m3/3jN55Q+yXynIuzN6h7qEtE+C1FadXK8cLNBR20Qa9ZS31a
	cGQCZnZL/+SEFoYrS6cROBA03mldL8lo=
X-Gm-Gg: ATEYQzz4kCoffax95Mxeg5ZqM9Pbu+qmsQ8jf8nF2ykySOUOAT3otNs41cB59SNVwoC
	4nTNRrJiBCjVN5xICVGU/2uVHH96ERA3U2Folo813t74o9se+DZQJD7OUWaH51/xys0dC4inRWu
	FinZxPPMW4i/EAmBqC1aEUDF1lccLfE0fyjto/QvpGQ1lgSVDVxjiiSm/+q4h2gHUzcn8+jArhM
	QLSotdbabQc386xHsCaVgpLmV7raE26g0SFs65IbTQolrkIuQhYvRy12YQ4HeJl74qnuX1yuuev
	lsxlypI=
X-Received: by 2002:a05:7300:570f:b0:2bd:c883:5f97 with SMTP id
 5a478bee46e88-2be30f941b0mr1107602eec.4.1772647482477; Wed, 04 Mar 2026
 10:04:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223-panel-patches-v1-0-7756209477f9@gmail.com>
 <20260223-panel-patches-v1-3-7756209477f9@gmail.com> <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
In-Reply-To: <dko7l6iage7blup4zbpsm32d2elvxpengqwbzcsv4v4zedjmpb@rsdrb77acgme>
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 4 Mar 2026 20:04:30 +0200
X-Gm-Features: AaiRm53L310AKJxACRT6XTM36Tn3jEqmfP1MmjLiZ-2-W9tuhbMJrDR64WApO84
Message-ID: <CAHuF_Zpa+cr6aq89kCon1dC3Q0PEV17VfyAbqF0Ojgmgn32yTQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Enable
 MDSS and add panel
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?B?S2FtaWwgR2/FgmRh?= <kamil.golda@protonmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: B36EB2064DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271207-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.0:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Tue, 24 Feb 2026 at 04:46, Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
<snip>
> > +
> > +&mdss_dsi0 {
> > +     vdda-supply = <&vreg_l18a>;
> > +
> > +     pinctrl-0 = <&mdss_default>;
> > +     pinctrl-1 = <&mdss_sleep>;
> > +     pinctrl-names = "default", "sleep";
> > +
> > +     status = "okay";
> > +
> > +     panel@0 {
> > +             compatible = "samsung,s6e8fco";
> > +             reg = <0>;
> > +
> > +             vddio-supply = <&vreg_l9a>;
> > +             ldo-supply = <&panel_ldo_supply>;
> > +             iovcc-supply = <&panel_iovcc_supply>;
> > +             reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
> > +
> > +             port {
> > +                     panel_in: endpoint {
> > +                             remote-endpoint = <&mdss_dsi0_out>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&mdss_dsi0_out {
> > +     data-lanes = <0 1 2 3>;
> > +     remote-endpoint = <&panel_in>;
> > +};
> > +
> > +
> > +&mdss_dsi0_phy {
> > +     status = "okay";
>
> Missing vdds-supply.
>
Can you expand on that? The `dsi-phy-14nm` schema doesn't have the
vdds-supply property. Do you think it needs it?
<snip>
> --
> With best wishes
> Dmitry

