Return-Path: <devicetree+bounces-275148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP7zEe/zs2nYdgAAu9opvQ
	(envelope-from <devicetree+bounces-275148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:24:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FA028231C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0CD4305BFF5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ECA538C2AB;
	Fri, 13 Mar 2026 11:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fnb0krby"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FC03859D1
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773400881; cv=pass; b=OuF8nEtAmwmEUgcllCq7/ra//yI14wO4g95lAHsDTJAfLsHLHF6w7V2y08xG7KMBYUGPfpUrYf9/BibqTj9xdzSX/NwDR7lxYGoGVlJagijTQQzZ49ylEueWzqiIBUDWY6GxWPn/ny7YI8Kt2kDPNl8iVJn/+FbTKSOT+L6JH0Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773400881; c=relaxed/simple;
	bh=7fVc/jZfynFeoSYgaf7HxtjcfzW1V4HoQrTDitcvLZw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nu5Ubt44ROlsYXrkK9iEgw7LVVnI+R6s8RODLX0PZbeiNLpaAvCI6yaFICyUbnCWjiViIr++UEs1LuCo9NXAcc30Eo6h9m0XoXoJiiXlIUrJtShMPSYSp1fqjHzGMWBgUxUx2ckOLEjoQGjtt+NLvyplIHaizwTIg4LVvk7mNAc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fnb0krby; arc=pass smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-509006c070eso18068111cf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 04:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773400879; cv=none;
        d=google.com; s=arc-20240605;
        b=QJGtaJ62PMN0sZL/ZnE2bM9g4YKOikHLJhfKRjRGvC3p81DzRzpJRs9LiWHP0Jmkv3
         AM9UZFO4A42qa3ETyl0gdx3UAKayV9km/0Lb6arArS7BKMclGAlQY5eqfw45CIJCL18s
         Okpa7/Dphs4dRC4CEtYCfl6vg40RLmCK4bUI+ud7yuw3GHHALYuHIAuh5gfrfbubDiQz
         M/a1KrnMtIj2X79+k06fwMlcSryqRIAHWWN/i5rlNwxxY1w6XJ1kaaetDKSf4c75/cGy
         JDEzMnhRoKPTg3nw0sccfhabThaB8b1/zdfq/QZGpKwcmPkYldwAB3KStgNzmh5yECMx
         Whrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7fVc/jZfynFeoSYgaf7HxtjcfzW1V4HoQrTDitcvLZw=;
        fh=naf+O1Iucz2inbxTiUfQoWht7E+RghKznu2M6hh2AQc=;
        b=Zqad8TFh5XW/M35VQ6KkUWComhfBT16y2WaE4dPNlYQzu7uqPTd6zYse6CjB9NK447
         9pk3noRUOn2oijvh7qo2fiwCFIwXDvs2spYfq5ujaOOvD5pXbQgQPA7rGxiIvkvQucys
         5puwc4NMroIgGt3cplotxceFh1fybW81DHTX1e+OWa9rV5Dio0UcCjcjoB0dt/HqLfX2
         cnlVOCxSFWemUzyYMFD715JEPQahz6ynr56mA3PI7LJP7MvXy72VSQZ0ixD5PQ458FZ+
         6inNRYi+OuZaISnRyB7i3XtBlxn9zK5zxSpVzs9uW5LOoDOUcjnxgkLytZM6Kg5lT6IN
         M7Ag==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773400879; x=1774005679; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7fVc/jZfynFeoSYgaf7HxtjcfzW1V4HoQrTDitcvLZw=;
        b=fnb0krbyj+kL0ZCYrcQfOM5r4ofVPCKfKMOqYcTm/zcyNUL7fMJmXDb2MObRDJp0Ng
         NeNikEQwKR4DBCkO/kO6jq1KykOmdpL6wT0m8rvgyPZk2u37ztI34q3qLxX0N6yIbgjq
         tqneDGx5HS0vSd3JHP/9CruLaXMMeuMqsxBCDzPQnPjGNcJrTkztVs8/BYx6//+cxuSV
         zDpUQK3MjNstADRu5QnJbjehr6nAlI81MS66TLJHmVWCPhY4UiwJEUKT++KPwLj8uTe5
         mg1Z8DwbZlAyPuy3u1lb9Qii8RTahr4XxXuQlv0+G0py+B8PbbbnEx6xgvQ2pGpvaJKU
         YCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773400879; x=1774005679;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7fVc/jZfynFeoSYgaf7HxtjcfzW1V4HoQrTDitcvLZw=;
        b=PQ391pOwrjgr1+JHumlSpC/fiLB7xEaMA/8wcmQiLGWpBcalWUeE9BEfs7f6ugl+Jy
         quJhLGB0J+VGFqu5xE95xZwYlX1jfJjM/4wBYHFwWab0pdTd5vxLI3+Cjf9y6WPEtoq3
         Tk3RfqtdTwQqs4QAfWt+U7PoQJeoudZGEl2XiTUQXoncDGkB8mZPjLrOcRIYudoyypzP
         tMUGLU0BXgTj8YLAJ04V1JWQOJ3M1DCmuN/zq3MR9XBAXPOG2RttVGT1WjNaaT9HqnT+
         a4NzlYV8s8X7qVYexbSjlnZgN1dFX9x7OConuqaovHmSgdVr/T/yinIG0x1JZ9l/xysC
         uN3g==
X-Forwarded-Encrypted: i=1; AJvYcCX7SYUR8TVJfSyNPdbISYggf/XyZO0qcbr0LzKXdvzUxIy40xDdX3USkGgWowGchZJRRH5J88DXrImc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+5XPk9uubqTI4eBk8axcWDzs8KUo/VKXjnZz1ymRV7IadJiG1
	8nCVrwxnVSThVRjw3pFZBysAytliOGRFSchoDWTjVKIMtzq/9WTB1RTJwW02MeBW+3xdlhkNh07
	4HJinNCSfYalHSn3ekoCdvqmesJ9JWjc=
X-Gm-Gg: ATEYQzwJFXAlww0W0rOJree1YD+jvlL9fIzKGYteimAAjlVzR30KwZIvJ+5Ca2hOb25
	LFqx/3YiivfJM1s2UX0luZFIyacb/uYqqEoujKcZVLHh2oekSyBfewfCwoPuSYpto2EWu0WsqAK
	89exbY+b9o13o4aAIfmjyolY9Ok5iqWVE2K4DMQUTrtgTUzWPhH24u5yvr14WsOa3yznhdFvErD
	jbBuKuRxwNH+vl7Kwms1OEXtiV/vWu91BmG3MNIlG8TOzqMVcw4COKb+fMBCryfz2y+O+GnrQIx
	4JjsUg==
X-Received: by 2002:ac8:5946:0:b0:509:2222:4202 with SMTP id
 d75a77b69052e-50957e65448mr38456401cf.71.1773400879027; Fri, 13 Mar 2026
 04:21:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com> <20260309-orangepi-sd-card-uhs-v2-7-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-7-5bb2b574df5d@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Mar 2026 16:50:59 +0530
X-Gm-Features: AaiRm51wBTKcyCiwjUblmLGy3GXdm8W7RXj8vtcE2IrwfuzlmNKUiXiuwUzU7RE
Message-ID: <CANAwSgTkyyPYExj8fwhtG1mEmKkKWqQf3ZwaJrsvj90sMf1kJQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] riscv: dts: spacemit: k1-orangepi-rv2: add SD card
 support with UHS modes
To: Iker Pedrosa <ikerpedrosam@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275148-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 86FA028231C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Iker,

On Mon, 9 Mar 2026 at 17:11, Iker Pedrosa <ikerpedrosam@gmail.com> wrote:
>
> Add complete SD card controller support with UHS high-speed modes.
>
> - Enable sdhci0 controller with 4-bit bus width
> - Configure card detect GPIO with inversion
> - Connect vmmc-supply to buck4 for 3.3V card power
> - Connect vqmmc-supply to aldo1 for 1.8V/3.3V I/O switching
> - Add dual pinctrl states for voltage-dependent pin configuration
> - Support UHS-I SDR25, SDR50, and SDR104 modes
>
> This enables full SD card functionality including high-speed UHS modes
> for improved performance.
>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>

Can you add the same node for k1-bananapi-f3.dts in the next version?

Thanks
-Anand

