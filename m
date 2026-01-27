Return-Path: <devicetree+bounces-259691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPLzAxskeGlcoQEAu9opvQ
	(envelope-from <devicetree+bounces-259691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:34:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1162B8F094
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 03:34:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A13823004CAF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 02:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB923222575;
	Tue, 27 Jan 2026 02:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="gzww3Wqu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3003E139D
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769481237; cv=pass; b=KnPRTAa5G1X5V3GKCcWgsIbjNmRRZ2/o4Lql+L2AI6gDVYvBqv1VXRVEPCUZrQmItEAz/YPPGyfi1rmrFN6W1gHaTF3fDBdUTwIKGl9nuxgPdO6LBm62lTbSHaxPiH7zkwgj4MdTZ4LeGsm7foxr2Urx4nGuUiqdYKsarrBJQkw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769481237; c=relaxed/simple;
	bh=wnhaptmtQTA7JxU4MBG5PTLQDrXwDGYuJ0Tg+46DiE0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V8nFdxNZprtSbhFrOEwceP0VmkTv6Y1UHhVOXE4jWfpQxlVkC74lp65+oGRLk9yu5NEkIewB6+CFVDZeyEC69rNkfWcIMuWQuC8L1E7V+dBoEWEWCGSTjQVtCReG6YSMuwjKO6/iXDpZTO4NH5Zki/iRWNbrciRUshwp7F7ly6Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=gzww3Wqu; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6496804204cso2265295d50.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 18:33:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769481235; cv=none;
        d=google.com; s=arc-20240605;
        b=EtHau4NojOKazBGz5mEHUPll8sy3DaE3LkV70aXXwDhjDtKEEa0XQPe8fyJebj0e1I
         /k5mWIX343nwR7HtyB5ceyeAY9nRCKRxOcRQBaN9Yw5WR86v46cwfiKuMjoMu2TlWUqL
         Y7JcETb0pw4eBTvd4E0j8H6eN/0LVeFBLZjM0Dh5Z/M9sGtE/OzSQbY5q6Icq+qC2YE7
         9FV/LbHz6qHyIlEFoSL8bchWWiX1aWhxMUw0NG4cVduCJvglppmL2MQtITjaaHdj/t2U
         LPR5/b9vA9qdZzOR9oUTXEI24OMfyDPhkai6RHxkZbCxEPPrKmcRYALCnlsDJxQ5MV7X
         qjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wnhaptmtQTA7JxU4MBG5PTLQDrXwDGYuJ0Tg+46DiE0=;
        fh=6nUOoSYaYk9q9aXPzSLSPUdaIc3Vm+i4ge4x1E5npcY=;
        b=GZdtIiUS8BcPmY8jpCUM3iDOlSVqbDRueMeRkyWuKs2XwPPKqqmnAJAYzLM/OqSRhv
         J7YgyMPn0s8cHaCEwaJGSvj44PRPepNAvl7LPYPyFxQybtG47w2l+HFf2mpIuxZGMwwI
         xPQNh9UP4ghyCB++DSLG2QRv3V3kMRygwFrOvQQGI3l/PtT8XDJCOASJ4Jzgo9193S/3
         QN9xIj3WiUlGjh+9Is+q3jAG8/flNnMYocbRe613lnUD3XeBWiI+P1XD9y248L8IroGn
         91GNp4NkXpbwHfkl3jC1vBIgX/MeVdEoPPyWul61bHveGoZDgEtV6JQf/v5Y+elvjrc5
         w1Dg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1769481235; x=1770086035; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnhaptmtQTA7JxU4MBG5PTLQDrXwDGYuJ0Tg+46DiE0=;
        b=gzww3WquoEUlKyFVnhPoPetwm1LlvvhqI79ZjFkI2BUD7ftcFcdfRm0tvP1+24a4Wu
         Xib5TA30nIEp46QGt5t0tEx2SC4Nbv5qgLuhXEXnLwEh+K5ZeBO0Txysv4nb0Nn++dsi
         UAlsiBdeNFb6DB0AKLOex0y5gr8LYyuH2yZCZ5ZAk021cod5rJWsbmdvPrVWWqEQesVn
         qhLSKUf25VD9aduq0IBmhbi2plOx+1RJnORfmZAY0BLqNfP1OtresDYBd1yc1QBHd6F4
         8kbfhWUjJsTRSR8VEgqKNloE/ejo6/32UO+JBQ9QS4QngH/CFx9QPX/wINWwbrj3dmUV
         TP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769481235; x=1770086035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wnhaptmtQTA7JxU4MBG5PTLQDrXwDGYuJ0Tg+46DiE0=;
        b=HCBmYP3pbqNxOeyRmY01x/rPOSxVVzRMhastHOYkON4FwB0pWNXFygUM1G62SPOXmM
         ZOUzitnFRxpCsFsZXgy9v0I7xkmb5gcLS5Kd7F0YaT2cQf8837TsPZ9W4o9LIEnSRvw/
         4qhI0BZPrr1gMXS7g9KVBZRFOvJFEanhq9WgVZw5OHXzW7M42+JWxGOZ9z4W8CM2qtio
         pPfDhJNeLAxjj/WC9N6EGFHxdKU+RT29uAN/tb5QLpIczAKfw0cs/J0URbTeTd0r1ZLJ
         CMx69Jr/3A7HFwmGuuPwqCxLgkIgVsNBoou6vCVecB2veITcNkT+OvNftdRRW2LMPV8h
         zaZw==
X-Forwarded-Encrypted: i=1; AJvYcCVqtMaAlOCKfE0iMd+KKMhI+R+XfzgzItPR7Vqvg7PvJXEWbShXxfysdcEPovc4NiHU9JDZuqEIvcDn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5oWqhS+GAnuLaTU2d7JR7W+hc9O8Ie7jOMysdGF2rBGm6VXx2
	PxlsuzOzMx7HktHOqutJqS9ki9VZrL9N1hK4ASLaiPioNHpjrqrnN48yk+aZj3v9yct4Ap6bV1Z
	Gulvp5y1la5ErAu3cwN/D06l4b5B9FyYjEBN/19sMpQ==
X-Gm-Gg: AZuq6aIJvC8XAZ9myZ7Nf2kWa3bwwZrMN8Bp7OrS3kCdFHeDc1dV64Up9DSfu8FJ1P7
	H4fx2U6LJZMz4LPf/Y79r4bq6wSh0hY77dVJrUifjKv0NLA/LZH/FVDH69PitqD+DNCbsQFqYFA
	cmxE3665251QipcbLv/ENfhmT6m2E6HvNe3Rm2EGWdp7Y6eEYhMvE7S7y4//g1jKrSYuL5cxHWW
	ut8p3p6A+fj8VntOINxvAIL/5exZNXDQ7ATkgGhVTbX+oQLo4IjvtEhBHG/3twpO/PY5R0sFK6R
	GQ==
X-Received: by 2002:a05:690e:1c1c:b0:644:53d2:a698 with SMTP id
 956f58d0204a3-6498fbf5009mr54384d50.34.1769481234990; Mon, 26 Jan 2026
 18:33:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
 <CAEEQ3w=0_JvE0nuJ=F_RHsBE=tbV5j0ycgT_k3kYPLE_ixOExw@mail.gmail.com> <aXfKYokyKJ8oassV@x1>
In-Reply-To: <aXfKYokyKJ8oassV@x1>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Tue, 27 Jan 2026 10:33:43 +0800
X-Gm-Features: AZwV_QiA23kiB68WdyQnej2C57ua4snmGQ3t9gJKKg_GFzgdJ-hZdgu2hYe-BSQ
Message-ID: <CAEEQ3wnxFyCDL0swL4ymWupKj3M+TsbEtFn+CPx2t_1sZS1PdQ@mail.gmail.com>
Subject: Re: [External] [PATCH RFC 00/19] RISC-V: QoS: add CBQRI resctrl interface
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	=?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Adrien Ricciardi <aricciardi@baylibre.com>, 
	Nicolas Pitre <npitre@baylibre.com>, =?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
	Atish Patra <atish.patra@linux.dev>, Atish Kumar Patra <atishp@rivosinc.com>, 
	Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
	Chen Pei <cp0613@linux.alibaba.com>, Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, 
	Weiwei Li <liwei1518@gmail.com>, guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Reinette Chatre <reinette.chatre@intel.com>, 
	Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>, 
	Peter Newman <peternewman@google.com>, Fenghua Yu <fenghua.yu@intel.com>, 
	James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, x86@kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259691-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ventanamicro.com,sifive.com,baylibre.com,semihalf.com,linux.dev,rivosinc.com,linux.alibaba.com,gmail.com,zte.com.cn,intel.com,amd.com,google.com,arm.com,vger.kernel.org,lists.infradead.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bytedance.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1162B8F094
X-Rspamd-Action: no action

Hi Drew,

On Tue, Jan 27, 2026 at 4:11=E2=80=AFAM Drew Fustini <fustini@kernel.org> w=
rote:
>
> On Mon, Jan 26, 2026 at 09:14:24PM +0800, yunhui cui wrote:
> > 1. What about the relevant logic for mweight?
>
> My intention for this series is to just add support for functionality
> that matches the existing resctrl schemata. I think mweight could be
> added later. There is active discussion [1] about how to expand schemas
> in resctrl.

The common layer may consider adding a resource type
RDT_RESOURCE_MB_WEIGHT (similar to RDT_RESOURCE_L3), which can evolve
in tandem with resctrl in the common layer. The RISC-V QoS layer shall
implement the logic for mweight =E2=80=94 this part is fixed, and it is
recommended to add this logic to the patchset. RBWB only provides
static capabilities, while mweight enables dynamic traffic limiting
functionality, making it quite important in terms of overall feature
support.

>
> > 2. What is the support plan for IOMMU?
>
> Similarly, I wanted to land the basic resctrl support before expanding
> to other resource types.

Alright, this part can be incorporated in once the review for the
cache/mem + ACPI patchset is nearly mature.

>
> > 3. Can we also add the patches that support RQSC to this patchset?
>
> I'm about to send it as part of v2 of this series. I removed the
> platform drivers and use to ACPI to boot the system. I will finish
> editing the cover letter and send today. The b4/ssqosid-cbqri branch
> contains what will be the v2 series.
>
> Thanks,
> Drew
>
> [1] https://lore.kernel.org/all/aXUK7XFsHl+gnwA%2F@x1/
> [2] https://github.com/tt-fustini/linux/commits/b4/ssqosid-cbqri/


Thanks,
Yunhui

