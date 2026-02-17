Return-Path: <devicetree+bounces-266199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOqPOe6KlGnTFQIAu9opvQ
	(envelope-from <devicetree+bounces-266199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:36:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E36F14D9C8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:36:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85CBC3025936
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A983B3612C5;
	Tue, 17 Feb 2026 15:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V+lt3fFx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FBD33509F
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771342571; cv=none; b=QknMvF28Fr3Ir95ODu5+NJRmqmXTJQFBwRnobYPFfIjLTeE8KmZaj083Ksv9em//CXk3iDAjENU1zd02zFCGzrjpTbTOv3ExYcHKS43sCxvRnY3rvraebhBusIsooU/lvEQjH6+Mqu1LUWXWbgLK43FxECxfziLyW4wUqiX6KgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771342571; c=relaxed/simple;
	bh=/L5x7FIPd396QMGe4epACvw6BnzFS8NDydgv5+TIwdw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I5rwmjzmDN8wxwx4GyIMzbdkZZ0NnOdaTde94F/KIKZG+L4H7y4++fgBq0atuOlb4CfzAaVYn2HFoHko00MWVaikNEWcMveHgWoyuTU0g/D/ZEld4LRQAEYNX03tFDu9m2nFVqqf2koVALdKCNYTUc1CeFo7u5gO47KUWGXVp/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V+lt3fFx; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-65a1eb5dcb7so358267a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771342568; x=1771947368; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Nsb9d4cdh3TIN7gk7P/dLzs//wsu5O2NugIegk+Dvg=;
        b=V+lt3fFxUkIFI2P4XRT+WGSDD/K9LdDaGtAxiKlD9aUTqokx6617sK1ZtZtX9KgZHr
         qh9EtIlK49wEnLPXPChgwME78lhNXQruXwMEYpS96nb6tKgsLUjLCSo6Qw2WmPFVk/EW
         a9SkD1CXSFcRIrAk7GZ/d66mwWU4MxiPfq244QMLMj10/zjTc4JjtoJsdYxqnTjlwkj5
         KX9NgrV4mKJ2wW9Kw8oNYSyBFjyoBSa2uFNmWScLW2sZuCehjM3otDDOkNjMvSNix0gM
         SiQDTDlx8ru1qp+T6QumO31f7UpGqEwjzIH0GcIGk/PSbU9/R5APjEPmck3RV5VZ4e+w
         d9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771342568; x=1771947368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Nsb9d4cdh3TIN7gk7P/dLzs//wsu5O2NugIegk+Dvg=;
        b=CidQFjIzqTWIxxLiixjI+u+hzna6bTJLxRiya8ZlRe+FpGzAMVOWJIFFH9JoDupio4
         YYcyFRTOOr8jnBxav6opNpYPjp8Dp07x09l4+zgfKnHlwiU6epr5A/D2LS90O7YtEnAZ
         VQ0UsVU5rJDx9UDlUbidXytUkQhirWYP1/80w1A78n+313qNcSSjpwnnlPOzHBALe3FP
         Crb4odOhoe6QnaK1fvZji3CqY+G+/eJzKRCgyXMPl5wYM8pHdSOe/APqhCr4ooeW8e4C
         9/hF96wuL8Wpvk42luPGcSEyOacY8qdzXiydIuEnt77Nw6CoEuMw+5M2Vo4EbVxCJAOg
         NwXw==
X-Forwarded-Encrypted: i=1; AJvYcCULdV1uzzf/6DpX3WjGTBSKvw9Mcpd8IKOqQNqZEPXVDRA2r7ojgkzdEjhrhwI4r9dx02R6FPGImpCM@vger.kernel.org
X-Gm-Message-State: AOJu0YzwoHm7cg0VbAp0oEgmox9B76QVkBE/0HtIl8upBuTPhWuac8qA
	N60GNgSOKcRcEDGqdifwqsxY+cBeYhBw6elQ+digenLHK0jbyEI51EVt
X-Gm-Gg: AZuq6aI9kz4KXyZeYiYd+SJatNHZiaeaBOFyI2pi3NQZbNGOGHlBxBMXxOPx5zdLimc
	Br3WjHW2jQlsXbyDILxuXOB/2gK71RHdqtqiDnf3Wje5yr9jmmpQwrpbeSpxp5WLqqHqAJtdJig
	ZIjmZaUbgTNDnP4iZuOgsdvUkB8gn0c7HLSRYk5y6u2u7xcxDGGpoPmciltQNb7MAgauka7KE8u
	V+UgZPmuiROhNgszW9pgSQpYd5VmdeAQN59uwlY+oXFLVNGVvJSOM8niDh0Haxx0QWm+4ej8ymZ
	zUGF/t/ywnByoi0cjRh2p/zM1hEumMO0GHdz+omJ7zOvlOzbcLJh9pD7S9bjGTynoYepDPa3b+G
	bdhjOsZD/UI9irRutwB0g7F0sKecYqeE/QdkHMZL0FEnB0aEYbBhVPh6WVJwwpHlYpNiKkTLLY4
	UfXxRA3/mB8KFSgmUIoqgiH90GnQ==
X-Received: by 2002:a05:600c:b93:b0:47a:94fc:d063 with SMTP id 5b1f17b1804b1-48370e38ba0mr147624125e9.1.1771336712310;
        Tue, 17 Feb 2026 05:58:32 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:ac3e:d4d0:5059:7047])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48378b5196esm129721775e9.8.2026.02.17.05.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:58:31 -0800 (PST)
Date: Tue, 17 Feb 2026 15:58:28 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
Message-ID: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
References: <cover.1771258407.git.l.scorcia@gmail.com>
 <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266199-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3E36F14D9C8
X-Rspamd-Action: no action

Hi Luca,

On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> describe it as compatible with mt2701 instead. It is safe to do so because:
> 
> - Bootloader doesn't rely on this single compatible; and
> - There was never any upstreamed devicetree using this single compatible; and
> - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> 
> Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")

Not sure which direction this patch will go in the next revision, but
(if this patch remains in this form, and intended as a bug fix) please
do not mix fixes for the current (and stable) kernel with new development
for the next kernel in the same series. They are supposed to be applied
to
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=next
and
https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=fixes
respectively.

(also see Documentation/process/stable-kernel-rules.rst for what is
generally considered to be a bug fix. We don't use the word "fix" very
lightly, there needs to be a user-visible impact.)

To help the build test automation select the proper base branch, you can
use the "phy-next" or "phy-fixes" git subject prefixes when generating
your patches.

You can send fixes at any time, but please send new development for the
next kernel only when the merge window isn't open (unless it is marked
as RFC, then it can also be sent any time).

