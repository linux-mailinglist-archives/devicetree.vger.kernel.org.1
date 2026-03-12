Return-Path: <devicetree+bounces-274659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHeDJkLbsmmCQQAAu9opvQ
	(envelope-from <devicetree+bounces-274659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:26:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 255C027469D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6488C30FD7B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6982833F5A7;
	Thu, 12 Mar 2026 15:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MDqZcH5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC76F3446C0
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328674; cv=pass; b=d7VtPShzGp4524MXSbCHszVj1zB31UIiXFaCJye7tz104Jbzzqr2lgiDn+nojB70oY8O4w13RVES4uHyXuFswtTG/yEpwE/wwCQEgWQm1FfihXdIPzr+SgIkGbLaJpWDOXjjh2s9NqJaP6LU8vQEOOFsPLzCBHHYvQpNwTJ7pcE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328674; c=relaxed/simple;
	bh=n3ZdwtFbjDiH9EBOiJIwiZMSWbVjFjhZRnyxPeovuLo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B0jrcUh09PsCmFx0I5+pmrj+/AT7pX4dUcno4jw0PdG2hmAlP1mwAVvgzQJAVhm2YeJ4DndZ1R3geJJjuQmP5CspG5Vyr+qHkmNqPWvFQC794X1RzVBS2RKqhOLe/Vj5+luu4pcyznFLh90GwvDLLjDdyXQd6fkUUUDqNIj+c2c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MDqZcH5o; arc=pass smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439afc58ac7so1426985f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:17:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773328671; cv=none;
        d=google.com; s=arc-20240605;
        b=BRvwMCmJdcCw+72IR6VroX97tla8v9M3iNnqCMKmwAVZ1FFUiYzXFvwEeo0I46VJkY
         EJt4cpOe1XbSUz4Zpkd23CimE94c38yPW2SfdM70cL5oaWu/gdJQyn43FURxIlkb2wJi
         0ZGf57jPJMieaKzWjYN5pPU2HNq7pNXYIlhl3hCTnlayNnx8nUe7NmwgohIVFfAMKta6
         6bwWgIFknj4Bb/cJlCW2Kqx2d5QtP10HpCZmph0KfU7g/nSkigGfJUBEzUGtnaxDqhG9
         vhIyNOHe6qqxwClcx9wVfTvSW/MBckTbt8Od7xGIHXKAaBkTX4/3S/HDirWR9t8pABVm
         7Ftw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jo2s1AAf8ngQgnPyrjkllIL90Gv+XfCJiqjmpNYyaq8=;
        fh=oEccFqUAWy859gBup5LEBKwABXEY+m8Tu0QTHjl70WI=;
        b=X4wlWWNXNIqZtL+gBXebYf96eJlHOzYXNFQmJplFugUFEjvSF8nR+O7bWWOdtmuALI
         bUazWUWTM5YtsDja2K7mML5/jcEsBzXTu58Z/30tSyk0cxNVNlRE/rQ4H9i0ZwatRXcU
         O4jwqMnFBzzHoQP1nVz/oP/CHakV94ySkQVmzC4As58S7MewJt++zbyIpuWZWzNJAsfI
         kxP0FUguqH5quLriJ1xvpg1/eIdcTQWK4B4edkz4K/EB67pwIM3oOhQ/JfCKk0d0eJxG
         DxLeu0XkFTUCHF9as7BJDNmZhXKtOmZH2fsizxcSO093rtdAiqg2WEExnkBlhhrkYaRi
         z6LQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773328671; x=1773933471; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jo2s1AAf8ngQgnPyrjkllIL90Gv+XfCJiqjmpNYyaq8=;
        b=MDqZcH5o/LzB2Lfx9tCUg3EgA8GkLGlXUTjojVMaFHXkuwLQF3pxwEJHuWxjMRpfhb
         Mrb3GJNUaBccsggJfvyKgltKJzw7kZDtUM95RwrcR/4ZGv/L4h58sGeFH6NW5iXIPUhs
         rZKl5IfGoAmcMNcX9PWm9couzvsJTB2/Hedsg9n+qk+RFqg6rOFLmS4wddljVXzRmMDW
         JoRYRfAn7oNJylkux/GXw/PL8PoHEqLB7BKsNot0Ppvzpw6d4dcu0baG08d+zP2Z/YDB
         SasIUhs10AgvPVROPYsPKJcC0d4Z+W+pRgPDyDHQFD+3JY+4ygNJHwKpCn9pPgK1J3EB
         ymVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328671; x=1773933471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jo2s1AAf8ngQgnPyrjkllIL90Gv+XfCJiqjmpNYyaq8=;
        b=PXnA4F6oEcJNe8gTEcz7wAMVq0miXgo4FSja/WkDoRsDN2zJRqqTIqm1VIXmfAYx6N
         IFtAnMXLbkbpzWlznHwnZ5GQU+eg9SZOttvnrKwn7zUukZgZDtvdhVEsOGhsf75q1vEZ
         qQC3XvjtBkHruPW0Z6lcpgu9MgAFxJatUWfOMWl6QP2H30sMY6RCAShju7s5GAXpeDmk
         60fsIRySR2djTgY05rtbJGSw8ZL3FeaNy69aHrpLWOvVhmc37iV4o+++aVW9X48gQypZ
         yduPgbp7oZ/Ya2a0zmhtNs9D5J9/GGTCwMiEawXB1MfpJcOV5nNleFDLEeqGJDG3D28+
         tlRA==
X-Forwarded-Encrypted: i=1; AJvYcCWhJYmKyqNArAVI3KnKzyynIAKAeDbE76ek11ghb81aFhlkTpwsTUIDqRrEBeKOqqTzylB7lUX4Z0O/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Vrt6YijFyH05L07nzqF/BojxbhncloT7v0gb23fHTtr9lCg8
	U0Bk1Z44cvR3ba5A3savyQRFI2fH1oNP/Os7j9FVbdc5SGosUh/UjFqwzDAlSEQEK95kvfXsIn6
	xN5P0FUtQsH97q4pF2OeCpB7A65x+ZQg=
X-Gm-Gg: ATEYQzy5HGnNL36ISTF2VYPC2xpAQYRO1GknbCwcKnCtx+ZWKgfzK2s3k4R08jZ+CVE
	WZqRenNYPhloK7FQoC2RkitenPPirEV/MR149DpNyD7DMgDFpRrWUqD8ij9tgtZhwM+GWzaCJMl
	0pTz4PGOh8UQf7gVTfAgMGsEMH+/iXgySJecQ9DZjLQkF/ieKZJSiCfc5HSQirZvqXrPUrlwYlC
	fezLSuF7qckgLr0jBNaQwYyGttTIlsWeza0N5lpinfEHF1bKfHvRz+8Vn7O1O2K7GqvEWpiSam+
	K/5JkaAP
X-Received: by 2002:a05:6000:400a:b0:439:c157:256f with SMTP id
 ffacd0b85a97d-43a04dbbe1cmr93582f8f.33.1773328670951; Thu, 12 Mar 2026
 08:17:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305161035.64548-1-clamor95@gmail.com> <20260305161035.64548-2-clamor95@gmail.com>
 <20260312145743.GA3116703-robh@kernel.org>
In-Reply-To: <20260312145743.GA3116703-robh@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Thu, 12 Mar 2026 17:17:39 +0200
X-Gm-Features: AaiRm51WovXJ63_4ynYJM6VsATVlyafbG5p2Q-agM7njMf0supe6EPuiPgTypQg
Message-ID: <CAPVz0n2JjD8MbxuX831QkYbgp-X5Bw8z7MMnNeCLTwU3vHYKxA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: display: tegra: document Tegra20 DSI port
To: Rob Herring <robh@kernel.org>
Cc: Thierry Reding <thierry.reding@kernel.org>, Thierry Reding <treding@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274659-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 255C027469D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

=D1=87=D1=82, 12 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 16:57 Rob =
Herring <robh@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Thu, Mar 05, 2026 at 06:10:34PM +0200, Svyatoslav Ryhel wrote:
> > Document the optional port node, which is required for correctly modeli=
ng
> > a dual-mode panel.
>
> Dual mode as in command mode and sync mode? Or do you mean dual link
> like panel-common-dual.yaml defines?
>

Dual link like in panel-common-dual but that panel-common-dual should
not be suitable for DSI controller/host. Tegra DSI expects panel to be
defined as in dsi-controller.yaml while this port node is solely to
cover dual-link mode panels.

Command mode and video/sync mode usually refer to how driver should
work and usually are not mentioned in the schema.

> >
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > ---
> >  .../bindings/display/tegra/nvidia,tegra20-dsi.yaml          | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,teg=
ra20-dsi.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,tegr=
a20-dsi.yaml
> > index 59e1dc0813e7..0f4837648d17 100644
> > --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-ds=
i.yaml
> > +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-ds=
i.yaml
> > @@ -83,6 +83,12 @@ properties:
> >        gang up with in order to support up to 8 data lanes
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >
> > +  port:
> > +    description: specifies the connection port for the dual-mode panel
> > +      and is required only when the panel is operating in dual-mode
> > +      configuration.
> > +    $ref: /schemas/graph.yaml#/properties/port
> > +
> >  allOf:
> >    - $ref: ../dsi-controller.yaml#
> >    - if:
> > --
> > 2.51.0
> >

