Return-Path: <devicetree+bounces-266217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFzzKv2flGknGAIAu9opvQ
	(envelope-from <devicetree+bounces-266217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:06:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 173FB14E832
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 191053011771
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8942536C5AD;
	Tue, 17 Feb 2026 17:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FcQr+zBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034B62BD030
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 17:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771347943; cv=pass; b=G0e7af43YBO78l7Y+oBq09/K7tRNUcJLmUocxzjMXeaQNSiRATeVNQqsEjW5mSV1cxebjcMfDg8Cyteu1uOadfak+QZsEUF0jk6fdqF/gfod5ND2ySqMONjCpLe6xDn7A/BjdJN6Hg0QTJIncOLw/OQboPrpIACN4H9dlU5Rlgs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771347943; c=relaxed/simple;
	bh=j1m1A+ETi2voa0p7ZaRe7xdVO1mieymSbpaSyP3gGwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KYOYukq2pRgwglNV+8iP+FvhjSPzWeoDMrWhNkHh+uVa87O5HG8Nz9+J/Wal93u/UYe7x1psWZic3yTwZZkKil3OUcIxAKASa8T1yJiXIhXUXpOneV2VM8x4f8qvpkMySy9I1kMspwGD3xa+rMfTZfnIupanI8eaWNjo+ETt+z8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FcQr+zBi; arc=pass smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-65bf2f59d64so2978594a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771347940; cv=none;
        d=google.com; s=arc-20240605;
        b=QN55phUernKRPvLX5MHtOqHpHNCTIXK0T0ZkedqXWyqT3gq/k//Kkty1D2exZZGLQn
         wPHeRAAp4BiJhmqn5tCI/ZwlTlozE09wJgDGFLCaPyimpfwYkjSD/khxRN/yjEg4bXvM
         AmwM2is+aIHGD5eoq+KR3SF/4JmIRJNzpnccmSlmVvRq/NaU5PrCrG7K4zvru4HBGP5V
         ay2osrwT/BCFCexydPVzYWGR+ZxRSFCslolb1GalVmnOce1UyjClyWoqaC2jAJxIC9g3
         40jDfIQA9hBlHXaRmruBMFUuiBciWgdEQZceN84LBDgbLG8ptGjb9heg7FsvWZ3NsRH7
         7ZEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        fh=i5aN8wwFDhIpCXTh3666oG++gv3QlLRVcCp7vMQKKjs=;
        b=F9Rn5ZQRTt3L5PQAR4BzSMGJXPLb/8ekaGB69XFNgEGTzE6Sq0zRpFEp2ch7EjCFUS
         KWVDscVTvCM6tUS2Dy+QIGAP1X1sc5IyAXZv8Dhn0hh3C3s2RyPGiDfFPdceiH+b6I53
         rTu317WhPyUGnSVhFp/5QczwAyuFORHyX0n9wQZCUgCUJlF5OBBVLEpHS4QLa3rbcw9b
         OkOvDwHE/ijktAtriOmi7WVACsy3PfqCGJXIuC9blY5joq2qLP+h5VLSsJpLurYdOeeh
         epzcr4tvSJxWP0NW7ng3v7tBATcp5/wTBu7SBUF7liYXeXUcaJC/x+oIBnnN1/TiCN6n
         3CSQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771347940; x=1771952740; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        b=FcQr+zBioTq2pUZOsqowYPumVUXCkWVGqUdyF9bkypw5htAPrgGuwqu7TW4f46YqPk
         YN3QOoeRdQWq79a/r6PpTmgV3D8UorKQ867ezHa7iyAVsUAFz89Xp/vzHHZTlSHYgRrl
         D2vniE1szE/2b5DcJBxFLExAIWINLdBb1eljGKV13tCy/qyu3ZuWtZtgq2F9g+SEgUZH
         j0XmUKghMkq/RCrZFoEqQqyqy5mztODkUUFa3vmRA3Br4E6O0smoI5pMp+boz7TKtDTa
         kqBNPiWH8ipgU5y1tkiekpHm3PRL/bD96/Mi/agI0IDH6bYwTv9AbmdQaoVpITkZ2xvx
         YVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771347940; x=1771952740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zXuAzouuRg3toFw3pm0e1jWSf/XIYid2mK4BdyigN9M=;
        b=Uu/A4/2QawEWaFSiiDOURRGI8/OA4+BAYBluM+bxT5EcKmMSKM9tfQhFGCyzAc9unV
         BOPNNP8a38AbJzs4FNHAWAVI1OQfBz+4L0q+397z2JsieCRDX04P+HjhMBSyTUuEKv5M
         9SU6AzrIJQQv/apRjJcUrjg85F/4A3fqIAyJDCqzVSa9ZLWwDoH1VC45NsnA10wfXglL
         i4IpKRBJBsU2baNACQlVARxIS2FZ6ehxdKjRkrMwiEPiccKnskDNIrDxgd4ioMKJ8agy
         pInQYFxllJDf+9r/6H4xotpO5QxguKLcRLSKYOykJSBFN1PAUxfaH/CKG5S/Rn+cQBIM
         AGDw==
X-Forwarded-Encrypted: i=1; AJvYcCXP6DTVUgedPuj3MPYjo8N3jUZnWC+Vx+gfe3D3Akk2pju6tPXR1d5flDVjVo6VPnmq212Dn6zpI/yM@vger.kernel.org
X-Gm-Message-State: AOJu0YziaCf41DHyWSO+LR5S/LZVicNAOe6Y67Xhf1pemasjQ9SzNs9w
	AmbhnpvkK9Z2dGIL92p0vmOeo7qc4HIKN6E3aRXqfLLiDflaJH4cItEkzY0WcJ2f+KdIZq4UZtd
	BgjtmUDOrJXbLul3uyJoqY0kJ+j1S07s=
X-Gm-Gg: AZuq6aI93wLRpAUP7P/6idmjdkJxVRNEg1YCkgVxoZ4qMEsu+0jeDMbNJmmPDXTeh5d
	9ZckPcoepyfcIEOM7kcdh8fPAPEBHufYPW+/1TFo9e3hgaCwHTpr+QWIZb07NsJLYK/TeM2SLRF
	vEzlzYd7xqB94T/uVQ/tuP0xrbXtKREtX6ySnM02H/6IubvvjJaxFh6IpFHmwxi1mfQFlahksd7
	DqwEEmZLCpNNLO1P5n8RyZB5t1ihPDDDt7/kT18PBrkll8fO9UHA34l9ME3Xy+QZ0pFybEBqNLy
	HL6dVA==
X-Received: by 2002:a05:6402:3588:b0:659:3fca:24d0 with SMTP id
 4fb4d7f45d1cf-65bc7a8ae2dmr5047427a12.29.1771347939988; Tue, 17 Feb 2026
 09:05:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217-stereotyped-dazzling-loon-f06e18@quoll> <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
In-Reply-To: <04a3d18b-80cc-4d1d-8657-cb35c4b5b797@collabora.com>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Tue, 17 Feb 2026 18:05:28 +0100
X-Gm-Features: AaiRm53iuI7SH76CEM094B1BEHtAFaoag8i5brp7UnlMPcM5xtOtDulZoBRUZlM
Message-ID: <CAORyz2+MgywrE0v+_UYt8gewq_eZ=ZgTUR66tL8aBbBQU53sDA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266217-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,collabora.com:email,bootlin.com:url]
X-Rspamd-Queue-Id: 173FB14E832
X-Rspamd-Action: no action

Thank you all for your feedback! As I just learnt about the
merge-window patch-freeze
period I'll wait until next Monday before submitting v3 including the
suggested changes.

Mmmh. Now I'm wondering if I should have added a Fixes tag to [1],
that's actually an
user-visible issue...

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/20260209090516.14369-1-l.scorcia@gmail.com/

Il giorno mar 17 feb 2026 alle ore 10:03 AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> ha scritto:
>
> Il 17/02/26 08:58, Krzysztof Kozlowski ha scritto:
> > On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> >> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> >> describe it as compatible with mt2701 instead. It is safe to do so because:
> >
> > You are not doing what you wrote. The dedicated mediatek,mt8167-dsi is
> > still there.
>  >
> > And if you want to describe mediatek,mt8167-dsi with OTHER
> > compatible (mt2701), it is a NAK. It is wrong and not allowed by writing
> > bindings doc.
>
> Sorry, that was my apparently very-bad advice - and I recognize that, as a
> maintainer, I should have given different advices.
>
> Still, check below the (bad, and not enough) reasons why I said that....
>
> >
> > You just added fallback, didn't you?
> >
> > Please wrap commit message according to Linux coding style / submission
> > process (neither too early nor over the limit):
> > https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> >
> > Please run scripts/checkpatch.pl on the patches and fix reported
> > warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
> > patches and (probably) fix more warnings. Some warnings can be ignored,
> > especially from --strict run, but the code here looks like it needs a
> > fix. Feel free to get in touch if the warning is not clear.
> >
> >>
> >> - Bootloader doesn't rely on this single compatible; and
> >
> > Does not matter. You still CANNOT remove a compatible. If bootloader
> > starts to rely on this single compatible, you add it back? No.
> >
>
> The issue here is that "mediatek,mt8167-dsi" was never used anywhere, and that
> alone makes zero sense as it is - by hardware - identical to mt2701.
>
> That, leaving alone the fact that nothing anywhere can make use of a node with
> just `compatible = "mediatek,mt8167-dsi"`.
>
> If it is not acceptable to remove something that was never used and should've never
> been there "alone" without fallbacks, it's ok. I'm sure that avoiding to delete the
> one line is not a big deal there.
> Also remember that we are talking about an old SoC that will never see a bootchain
> overhaul, nor will it see new bootloaders.
>
> Though, just a small note - please please please: when we see new contributors,
> especially when they're community ones, can we try and encourage them to do the
> right things, and follow the right processes, without being harsh in any way?
>
> And P.S.: Yeah I know you haven't been as harsh as you can (rightfully) be, so
> thanks for that.
>
> Luca, I'm sorry again, at this point - it would be great if you could please send
> a v3 without the removal of that line. Just add the fallback and that's it :-)
>
> >> - There was never any upstreamed devicetree using this single compatible; and
> >> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> >>
> >> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
> >>
> >
> > There is never a blank line between tags.
>
> Yeah, agreed.
>
> Cheers,
> Angelo
>
> >
> >> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
> >> ---
> >>   .../devicetree/bindings/display/mediatek/mediatek,dsi.yaml   | 5 ++++-
> >>   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > Best regards,
> > Krzysztof
> >
>


-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

