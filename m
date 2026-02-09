Return-Path: <devicetree+bounces-263781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHzGITNIiWm25gQAu9opvQ
	(envelope-from <devicetree+bounces-263781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 03:36:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7AF10B2ED
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 03:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 489C03000FC2
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 02:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73ACB2D6E72;
	Mon,  9 Feb 2026 02:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="qGr7di02"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1C32D29C7
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 02:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770604589; cv=pass; b=LAqTPQKKbB/GBNXKbs3fUwWsd1q4VbRIpzvcqlEsFAxpr4QMJvAH/cCPa7V/vqcvkzcwcaT08s7scOSdi8ComiOIekiNoJlXYytxhAl6jSRZvMGoWBEzxx7fvMDkNDerJlmJsfT9Dj5j3l545p/58gnqawhGPUUj0Hn0gygX6Yc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770604589; c=relaxed/simple;
	bh=Y4Zbu9lAL5V39dtbac9detuzLlSDWFIqPLLbgg24Rh4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kgXF8pSgUwS+DNexWPCv/2LV1VhVV79ASB0/obfiuTQbyjHXxDh5MjvzuD0Xq2LqIx41Qi35BPDE/69iha+9CXrtyPkY2wN52Tlb8hhrqViR36EO0kBBRhDfln/CG3Q1QeQ38L7ibnU3NiEMTu8kWv/J5ZyKoe+yWNYH4IlH0EI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=qGr7di02; arc=pass smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-89473dca8aaso36538476d6.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 18:36:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770604588; cv=none;
        d=google.com; s=arc-20240605;
        b=TEBH94yJhiw2+FlC6BMSQHPv5vz4SUVDilSXBFXCw0OqwjK2bWrxPxrTX0M8NyMndO
         yZBEEW+GOPPxrChhdLA/W6TDmRLPwWCG4nNEaugJXviDHXp6SZ7scHvWcwPMqgVX7H2/
         0eD3VJgxIs4OcF4LsmzmOlG6dJNqoU2IfNNiXJVVpO2OR88+JM4o1jLImNdP4QRyxLvB
         zwa5xUzlI2s/gNe8yNrHJTtcikNhGrvYxHtEKreQKQa6HPgeutMGTPqOEGX805KOtU+J
         9J1BlkaqTT7uyF4DEo5hLrHU2T3UgrmWNXjrrPjNhi8hyvmYN4vfrX0DgJ8cczCpGHhd
         OwtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QwQQ6C9/YdbEnVVFMoKHXxLP3Y/3AZryZFEHNalGX0k=;
        fh=GCcDX/g3FX0In4C0nk1WFBW+QBcQzc7JP6NEQF6znI4=;
        b=O8TqUa06D9S209WSomwopM4/8nNO/IQjB219Ltz1f35Bh5J2hUOeMfF4nN2FqfCezu
         e3sOkHE5wFpeftCtDekbVFxw83B/M0Nq9RN8wTrnhgsUfnPv+fDUSyhC4Neb3jTGJEHd
         xmcPtCbjQNWTvDeV+qW4PKDi7/bHOVqiCBxXsPOyOUE6M2n7Mf6OcrUAV8zJrO5aQ5mN
         OtyCgTEyNRz2u4Kn5nBHeIhhcpJhjHAjN1mvZZn+h0tZTzLhYAO0GeK73TZ5a0t1lzOc
         wU+1S0O6MIWpu+zcTcgOsWL0pDSxQkTmNEI8ra7FkfQeVieOiNh4Ufxc/8t/fbEUAre1
         IVUQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1770604588; x=1771209388; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwQQ6C9/YdbEnVVFMoKHXxLP3Y/3AZryZFEHNalGX0k=;
        b=qGr7di02HqW53UUXj0AIqeS9ARhXCCmPZ8Pehy49fDQdhSwUMtYBh6gGS6R62T+O+0
         4PoHO/kY41NwOf/vRpZykDK5epxDZjllwykE4T+6FZkOmwowUoMuNBlE8FWryTeR46Jr
         Ng02INOaBNINQn7hpnV51LybqeqpNQcxL5lzdx3dYx2V3nSMfSMesXDrknENnsWE6wTF
         CRBKJh7QeT1A4wJRgB/YXJxjFxTR2lvBi0BlYE3cFL1z26RiGr4xHASnc03xNFDEUWNY
         qiCxdiojcxITXxuDIdEJwLZZmltUccM/Y1fl/wLcZABsxO+CYWrq5hXKOPJ4H/B8cxDE
         764w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770604588; x=1771209388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QwQQ6C9/YdbEnVVFMoKHXxLP3Y/3AZryZFEHNalGX0k=;
        b=brThcQxFLKN4aEsa/lzHgg9bTz20fG3qbUWika8lzI2cYnyc5p929XhwA5hLUCazo/
         gvKfCi1OLdWMh9A5JZKNipICvoNi6SiUIxBh2lLGT9DsA8jtoT43TDytOKT4rbv3y54N
         BQ433v1utPoS5V32mDXnJ9LcrjaeZbA6A7l/J3ho84L3zpr/YyMtz8PWekNyEyTfhOr4
         5HfeIviCZQuRFT6QX3O5rqzbMmpt38GHXlXZONFlEHEeD7ljT5PKq4WDVR2GrLhjC6wT
         yPGbsEq5EhS3MOx0ZT7HZ1pii0ah/NB7SfjbeBnaV3Pkzf5uF++ZwxGdihrpu5Mxqa6s
         LyYA==
X-Forwarded-Encrypted: i=1; AJvYcCVq3KiFOoTfV+1C03ixW9IVPy7eTEPWQM+ppnDu80p8Z0rnc4aqK6XOgEm2R1P113z0bznOr5Kf47Lz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5T31Ri99uB8osD2dkH/VTWni634jAIet8lxXKdXI1mvLjqqF8
	SfDl8fSZ1cfR1QApCPTbSdZcibXme7qh5bSstCbu965mmiRsMH2ELAmPl/IEZbNc7iox6LUSXAL
	CFJjFPUPxJo4FxcgX/joweuA7G1Cnli/APUILFxRikA==
X-Gm-Gg: AZuq6aLxsxs3pr3/FD6VYTKX1xQ12DIes5mYydxVFtvOuCzcbHBTna+7TfWsdDZFoBh
	1Vt/WQOJhtAgiTy6wxEi/frbl/0KvQxFrJ0xI51ogbTINQ8CICE2BttjxqJA+vPYOUGKlDBnpjh
	DrHCifYPE7/RpEv/9xCAhWqNJUotx7W8rAEZ98yiaCRiYt+J/iCdYQAdit0sfRhRxRWsX8vvZha
	rSu+zXMkTLe7Gr+5PHmM7xG70NSy00Feiwv9XFl/ekj4W5JpItIWgBJBLkNtKlSgFbhz0g1
X-Received: by 2002:a05:6214:268d:b0:894:6dc8:9255 with SMTP id
 6a1803df08f44-8953cb9745dmr163978416d6.45.1770604588070; Sun, 08 Feb 2026
 18:36:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205154657.3085820-1-yelangyan@huaqin.corp-partner.google.com>
 <20260205154657.3085820-2-yelangyan@huaqin.corp-partner.google.com> <20260205-chewing-taste-ad2d71a9ae18@spud>
In-Reply-To: <20260205-chewing-taste-ad2d71a9ae18@spud>
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Date: Mon, 9 Feb 2026 10:36:17 +0800
X-Gm-Features: AZwV_QiMTarjnbg8jt4_obnDVYG-PLn2bp8Tk32qgLF3O2o1CHQYHEIbStEZ3y4
Message-ID: <CA++9cvpxuZG2WQmttkPsx3CjeHQ73AwVF9-uXvztGMpUEQSYbA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: vendor: add taiguan
To: Conor Dooley <conor@kernel.org>
Cc: neil.armstrong@linaro.org, jesszhan0024@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, mani@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	dev@kael-k.io, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263781-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com,lists.freedesktop.org,vger.kernel.org,chromium.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yelangyan@huaqin.corp-partner.google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[taiguanck.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2D7AF10B2ED
X-Rspamd-Action: no action

Hi Conor,

"taiguan" is derived from the company=E2=80=99s English presence and offici=
al website
domain (www.taiguanck.com), which is the registered corporate site for
Shenzhen Top Group Technology Co., Ltd.

Thanks,
Langyan

On Fri, Feb 6, 2026 at 2:38=E2=80=AFAM Conor Dooley <conor@kernel.org> wrot=
e:
>
> On Thu, Feb 05, 2026 at 11:46:55PM +0800, Langyan Ye wrote:
> > Add "taiguan" to the Devicetree Vendor Prefix Registry.
> >
> > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index fc7985f3a549..a0fcd7154ff8 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -1598,6 +1598,8 @@ patternProperties:
> >    "^synopsys,.*":
> >      description: Synopsys, Inc. (deprecated, use snps)
> >      deprecated: true
> > +  "^taiguan,.*":
> > +    description: Shenzhen Top Group Technology Co., Ltd.
>
> Can you explain where "taiguan" comes from please in your commit
> message? Perhaps it is the website url for the company?
>
> >    "^taos,.*":
> >      description: Texas Advanced Optoelectronic Solutions Inc.
> >    "^tbs,.*":
> > --
> > 2.34.1
> >

