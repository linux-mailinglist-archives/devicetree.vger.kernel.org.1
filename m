Return-Path: <devicetree+bounces-264020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0ADeMmPsiWlpEQAAu9opvQ
	(envelope-from <devicetree+bounces-264020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:17:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E2110236
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:17:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABC9330054DB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 254FE3612CC;
	Mon,  9 Feb 2026 14:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NXuaLcyb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DCD13D638
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770646624; cv=none; b=sRXgJRYOEUM3k6v1ML1IiOFIP5oApF6/9rofbcybT77mW1bLZ/ewZoV34aOEChQ8t83MZt0TKRHrqEPnvQXQRDNGNBlGg47ZFKCIXjy+g/TBue0T3qxBpo6189uXQ5l33sXV6tdXX5aSs9ajqWvHWwvTIwK7o419HDuqhw4LC2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770646624; c=relaxed/simple;
	bh=gfTEdIsMmUOuJYpGHiGGK9+1z6kQlfXxsYz33NHV2IE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ng84eB261rAg9U43Wy8J/hMemLMOY08pI5x6/TqtravoLDZ2LewIX4g1QnjLbW+1MMruW/tyHTbAjI3xxCGZlp+ZwYgiVTKa7vaM1zs/TlL7n1/4vXLRb8CTG3kmYzn84N6ihnsD3bPS5BKqFPsn+dMl+Weg3UsGldWoFY8kpag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NXuaLcyb; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-c5e051a47ddso1911162a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770646623; x=1771251423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J+vhAUWptZLQYZPG8ROuiqprar1JCQQK4npIFBepuBs=;
        b=NXuaLcybPND+YIJKqPMSsPeiW37EzhCfaQj15wY8pfGeaGvszvtcq71+oppya71E9d
         ri0RdB4PkvT1LGDizv+jwr+hTD2Y5cEeu2IJ0faCAIx5WOAPTIXuDxwA55jGmn3lCswx
         XK3Yv/ujCgDzGDdXCj8TQ4O4gFy03eENmJ8jM84lCWR8k4dZeNE8QjAQX3KKPbDpbNXv
         tsxhTNXY7drgHdDBHwowCOgDfZIC87d4y1orPdEWhyEaxdAPKa5ii7FlHpxp5XCOOdwM
         NGZ0mtBYO7LCR/7CeBUWkt6GK5yFngUiYAe/olwZek9WAgSbIUUBwWJE96jQ1y8Izg7A
         Qnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770646623; x=1771251423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=J+vhAUWptZLQYZPG8ROuiqprar1JCQQK4npIFBepuBs=;
        b=QKTFx1lSDIAj/MTtwavj8hTEDd3+amd5JhLYi833Y/GV3Te+42iEVckFRB79NWTJjd
         9Lk4mNP6NP4gzt35v1bSQUIeosbCRIXYdm/GhL5hb+vgX6n+gTxJ3l8B16kIErqcSaE3
         RrB4KLnE9qI0LlBDSTStivmul/+LxykffIR12Qzt4HRDjigye28ozZjb3pKVHb6JQZra
         iMQ3nVfn53Kxh7QNlFsMcQY7inpW/uiMvRJarW/RKWGLtNx/JURriUaqd0q1cSl4MpME
         lvT03YXqUZcX8jYJlTWM9gbsUNkv+K5y8LamHNOy3gxfaJYKW802anEkbexm2Crk6Fub
         jJRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXtlK3gakZmlqz07yoqsK20eNtHw4qV+kVyiWp2JuveSfz8BUsRrhyHmGkTONkFmloKEy8IDzpv2zn@vger.kernel.org
X-Gm-Message-State: AOJu0YzE4ipppn3Hdhwy89oJeSR2VK3nlUxPdm9opfbbnbY1SPsnb6tC
	vb1MCUZW/mSUJhwZiANDT1vTPJDPCbTpxNIzx0/sgRjm1gBTq1lck2BG
X-Gm-Gg: AZuq6aLWZMyBx72kK3tdmMvKttXZI3l8awRcBGEQbPyoqLJKrycTieGof/vN6M2lgER
	MCF+GH2Lr1DETW8cIroOUzgU9hJkpu0OxcfZA+rX+HPOksTBcCw0I/GfMXMa8cYDrrZ+7ugSqhT
	otMEzTJnT1kavh2mq71j7i7pMGHlTw37QbDQf12/XOWBq4aPRXgQxDXPcSn19LimLpqrcsdCIHr
	1lVTyIekZYzb+mfnl3yG5S+GmGva1G31/RgmGO9IQ4X+Lan31RBYQk9vpJUj1MfHXuJWXfKAddX
	j6x4AUS2ucHFuT8YS5I971+r3z1SWpXM2Q38Ct02cmdbFkOH1cynWwHJ/Ghu5yHaQHQ9yk/5UDa
	+oowfdEajnAzgYG8i4GOvSp0z2irb+2FsXzWjWHnH16X8oQrTyquhTyWxupToLFMNEVjSCuNXt7
	eg4gcMjfu235eWNo/AKlF49YXed9NVMh/Xjg==
X-Received: by 2002:a17:90a:d010:b0:356:2eac:b650 with SMTP id 98e67ed59e1d1-3562eacbbccmr4038749a91.3.1770646623298;
        Mon, 09 Feb 2026 06:17:03 -0800 (PST)
Received: from localhost.localdomain ([106.38.154.106])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c5955a7sm14852844a91.17.2026.02.09.06.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:17:02 -0800 (PST)
From: Gong Shuai <gsh517025@gmail.com>
X-Google-Original-From: Gong Shuai <gong.shuai@sanechips.com.cn>
To: fustini@kernel.org
Cc: Dave.Martin@arm.com,
	acpica-devel@lists.linux.dev,
	alex@ghiti.fr,
	aou@eecs.berkeley.edu,
	aricciardi@baylibre.com,
	atish.patra@linux.dev,
	atishp@rivosinc.com,
	babu.moger@amd.com,
	ben.horgan@arm.com,
	conor+dt@kernel.org,
	cp0613@linux.alibaba.com,
	cuiyunhui@bytedance.com,
	devicetree@vger.kernel.org,
	fenghua.yu@intel.com,
	guo.wenjia23@zte.com.cn,
	james.morse@arm.com,
	krzk+dt@kernel.org,
	lenb@kernel.org,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	liu.qingtao2@zte.com.cn,
	liwei1518@gmail.com,
	mindal@semihalf.com,
	npitre@baylibre.com,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	peternewman@google.com,
	pjw@kernel.org,
	rafael@kernel.org,
	reinette.chatre@intel.com,
	rkrcmar@ventanamicro.com,
	robert.moore@intel.com,
	robh@kernel.org,
	samuel.holland@sifive.com,
	sunilvl@ventanamicro.com,
	tony.luck@intel.com,
	vasu@rivosinc.com,
	ved@rivosinc.com,
	x86@kernel.org,
	zhiwei_liu@linux.alibaba.com,
	gong.shuai@sanechips.com.cn
Subject: Re: [PATCH RFC v2 08/17] RISC-V: QoS: add resctrl interface for CBQRI controllers
Date: Mon,  9 Feb 2026 22:16:49 +0800
Message-ID: <20260209141649.330184-1-gong.shuai@sanechips.com.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260128-ssqosid-cbqri-v2-8-dca586b091b9@kernel.org>
References: <20260128-ssqosid-cbqri-v2-8-dca586b091b9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FREEMAIL_CC(0.00)[arm.com,lists.linux.dev,ghiti.fr,eecs.berkeley.edu,baylibre.com,linux.dev,rivosinc.com,amd.com,kernel.org,linux.alibaba.com,bytedance.com,vger.kernel.org,intel.com,zte.com.cn,lists.infradead.org,gmail.com,semihalf.com,dabbelt.com,sifive.com,google.com,ventanamicro.com,sanechips.com.cn];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264020-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gsh517025@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 556E2110236
X-Rspamd-Action: no action

Hi, Drew

> Add interface for CBQRI controller drivers to make use of the resctrl
> filesystem.
> 
> Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
> Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
> Signed-off-by: Drew Fustini <fustini@kernel.org>
>
> ...
>
> +u32 resctrl_arch_get_config(struct rdt_resource *r, struct rdt_ctrl_domain *d,
> +			    u32 closid, enum resctrl_conf_type type)
> +{
> +	struct cbqri_resctrl_dom *hw_dom;
> +	struct cbqri_controller *ctrl;
> +	int reg_offset;
> +	u32 percent;
> +	u32 rbwb;
> +	u64 reg;
> +	int err;
> +
> +	hw_dom = container_of(d, struct cbqri_resctrl_dom, resctrl_ctrl_dom);
> +
> +	ctrl = hw_dom->hw_ctrl;
> +
> +	if (!r->alloc_capable)
> +		return resctrl_get_default_ctrl(r);
> +
> +	switch (r->rid) {
> +	case RDT_RESOURCE_L2:
> +	case RDT_RESOURCE_L3:
> +		/* Clear cc_block_mask before read limit operation */
> +		cbqri_set_cbm(ctrl, 0);
> +
> +		/* Capacity read limit operation for RCID (closid) */
> +		err = cbqri_cc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, type, closid);

It looks like the parameter order might be incorrect. I believe it
should be:
cbqri_cc_alloc_op(ctrl, CBQRI_CC_ALLOC_CTL_OP_READ_LIMIT, closid, type);

> +		if (err < 0) {
> +			pr_err("%s(): operation failed: err = %d", __func__, err);
> +			return resctrl_get_default_ctrl(r);
> +		}
> ...

Sorry for the resend, my company email had some formatting issues,
so I'm sending this from my personal address.

Hope it doesn't cause any trouble!

Thanks,
Shuai

