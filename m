Return-Path: <devicetree+bounces-260890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KD//L3dge2kdEQIAu9opvQ
	(envelope-from <devicetree+bounces-260890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:28:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C1EB0625
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 390BD3035271
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:24:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B0C270ED7;
	Thu, 29 Jan 2026 13:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O+KGYzFo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31642749E0
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693080; cv=pass; b=s0f4rNhKqXkDQ3ShC336NuzBxapSktc/Dpqey1gK92S8HN7mm76++epkanG1w2yGA9PDCjRInCnfbiNgw1WUrgoDGdTljLNZpOyGgH15xkXJ+DAUPpmtXgr6c6Zg4tX6IDR2DPH1hBM0wFxSV1optnhz0Fyg7Hx/ADIN0oeHU0s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693080; c=relaxed/simple;
	bh=uIbBCRHAIf+wZipmfKMh7/2iOQuuGzjRajlHD1usE8U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WEHYZnnAjTi0yJdBB9a5mJQctbFbDBf/MBXdvWdFK4Bz4jY3vBNui2lKVmMJq6eSNPvM2vbvOwy96KrJ1TH/p+2jom62YPcusjnox4IP7ZKH4x4SQ8yAomj25hz0nNWeG2GF6Zz27FTmi1F9uK7lqrcVtcEQeGOMYcFE1ix7E/o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O+KGYzFo; arc=pass smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-658b6757f7fso1894095a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:24:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693067; cv=none;
        d=google.com; s=arc-20240605;
        b=JbINIfr9DCruTNqO907xFlgKO5ymWqmxLQSgoQOxTI3Geot7ANQefMAMESY+MIHBl+
         eBhI+dCqd+HgOnOupRa0r9u7OKL270oXOEksVaM+STQAuqR3LJOehTSZ7ZpUk+XMInuY
         wg72EW03xYRdPtfROAXXFTLXvDzU6r6BHxoabiyiK2qyMnsynrzujV7STiSRcCPebXR+
         AYVHr27Kf3e8eQzjxY77W+GsDcCZy27+fJgQ0P+4PxJq1yu/4tLIVwvOj87lGlR0sb3I
         8vhbQsv9oBViYIGjkyoi6NtMzG2FgO0HOJMMKwKygGudl8PpoI823OpWZaTa64MOnwQD
         +CEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        fh=6+mO7IjsutufsALUCXSXKmhHOzl0mp/MIPr0c9ttNq0=;
        b=F6vbtx5mnL9fmRWoKVxzuT8QM1wFyh57m9PZ+6n8W9YJxfjDNggWkYZEY/KQkG/T5L
         PApgU5xHutZSgyJMHbXRo4izpT1Dy41y+DPS7skneoqdY/9vdegbMp71DamawGBQh0vx
         TxmXGPIYitXoJwWFw0Fuy2WRh+RQoRFk3En28wDPk11mJfT7vdSHBtIXlVYasMAWe2Ay
         3RCIsagHz0AvnimhHrwtxXGEd6Ty+dIBaBwet5v2cOkFWPcBzuPWM/4ErLrD68w/K6q8
         3l+VNc/z8KjRc49Skqvb4O1kXNPjwYV7R6FGgsrpKYTtUMjVHdI6ZAImvBVW+OYjO5dY
         Owhw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693067; x=1770297867; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        b=O+KGYzFoOVtkBAnLOcrSD49toru4QS0RSZX+rOaV3GICq5bgqS8RvRc0GSeA19W/R3
         mODWa/76OCN1XJbVASwZiMXM+uQjjUEnvILgwrP7RB47Ii7YD6X06lcI0UnQdqPNICUM
         xDAfmTT/fAnGNFCjcOqGmFG9zl7tAuLyidNt+scpqyGiidiw1zDL8f4BfAzHGVaJSDr/
         jMug1tVGbJFLiexurwe1CxBr5lvBBak+8ODzc5trEDBK+EANbAOT6CgsDdHLaxxFDVRc
         9iI+tvgIe2vWJl+mqV0RtmSRffL0Oimm+mNpWb730OZetpF/ZN+5aZxjboKqPUc+n5/0
         GTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693067; x=1770297867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0truowzryH7wlizBZZo0nqF9JAtMd6wwNY0E8kTxdNI=;
        b=hB8HiXiDtP8Vim8NKMisMYgNV8hLfcIlHD+5C3AK7Odga7hK4P9Dn0Pb1RwrHNgdY2
         wMCEmDSNQMrek3sFTLHQLKmfLgIoV1KVAV9ZCXEr4T5ekT7kJtWFb17Sz7picmoAjpr/
         EkX5NqBwr7ZHO007DSTNOX9ftMYmgRMXtSl3+Ydbbbsm/tI0l4+dXS1D2xbHPito07OJ
         ljzb7eDpmk5REQ8MuLhFQkONOpFGteGLmMjld69TWtsQRrCZXzloUsu0WQFGLklImGmG
         rHaUy/pUjcQ+0VRriXGiagdxOQG6JMtv/JqGvWpT+GW8TinV/CKdHD/l5+8GygSV919L
         kJCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUH82HU5p4Y3WCf6k6FgU7IsthaZVqSda0pcK6MD+WKQp4HC8BBXSNjIK4iQrwgKafgKybFjy3/3drO@vger.kernel.org
X-Gm-Message-State: AOJu0YxCCDiNaFkAx6hQ5S/vB/LN33n1sJGfYiDvIoE0nFT64ySX0tlt
	antzeGPYalJ3d+5sd4SDtELt1kaRhtGIHvzZsSuai+isgtz/zsaItEBwrvIwyxOSYoNR1tL84EJ
	cxc4mxUrEFMhtW4wpw1Iu2Rzk1qmR4BjdR6mFFzgqhg==
X-Gm-Gg: AZuq6aIP3X0ZudvxwOxIggOGPCl87RC8a2lq1CHO6x7OoKzUvoq+N72yua93NMqEBWU
	KviYcnwMOAGuuGarXpTcx/brWKTM26rT/cYCDqWTaBpncDLSQJl/cil7t3SIHJkb9b4ZukYanar
	5QTj2HGstCq2lpBLbgtLxhHrAD2EnK7urDJNPly5ihxCSQjNqcjX4nuN3L6Vi2qaJo5X68/f5mV
	kM1NqQeiZ61yga++BZFcsHaZFyVISHR84v56gXcbHMpo7cQcaTKyWaGM0IkqjKIJPbBImlXOPw1
	8RdDcMUbrjzegnTxdd58FSTOACrZW1nSedk=
X-Received: by 2002:aa7:dad6:0:b0:658:ded:97c8 with SMTP id
 4fb4d7f45d1cf-658cb209a64mr1273909a12.9.1769693067077; Thu, 29 Jan 2026
 05:24:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-4-vincent.guittot@linaro.org> <aXtLsuOkMMryrUs4@horms.kernel.org>
In-Reply-To: <aXtLsuOkMMryrUs4@horms.kernel.org>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:24:15 +0100
X-Gm-Features: AZwV_Qj34ALujTrAHxV7HbCKDsW1Vf0wOdcaUENF06tNDpMBNRYgeeOZo4BoYeU
Message-ID: <CAKfTPtB8xDB8qYUZwGnH+h94ww3+gSyOuZ+RL+zOh5tYGuu_HQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] phy: s32g: Add serdes xpcs subsystem
To: Simon Horman <horms@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260890-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linux.dev:url,linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29C1EB0625
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 12:59, Simon Horman <horms@kernel.org> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:58AM +0100, Vincent Guittot wrote:
>
> ...
>
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-serdes.c b/drivers/phy/freescale/phy-nxp-s32g-serdes.c
>
> ...
>
> > +static void s32g_serdes_prepare_pma_mode5(struct s32g_serdes *serdes)
> > +{
> > +     u32 val;
> > +     /* Configure TX_VBOOST_LVL and TX_TERM_CTRL */
> > +     val = readl(serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
> > +     val &= ~(EXT_TX_VBOOST_LVL_MASK | EXT_TX_TERM_CTRL_MASK);
> > +     val |= FIELD_PREP(EXT_TX_VBOOST_LVL_MASK, 0x3) |
> > +             FIELD_PREP(EXT_TX_TERM_CTRL_MASK, 0x4);
> > +     writel(val, serdes->ctrl.ss_base + S32G_PCIE_PHY_EXT_MISC_CTRL_2);
>
> This is part of an AI Generated review.
> I have looked over it and I think it warrants investigation.
> For information on how to reproduce locally, as I did, please see [1].
>
>         The entire s32g_serdes_prepare_pma_mode5() function is ~70 lines of
>         magic numbers with zero explanation. These appear to be
>         hardware-specific PLL/PHY tuning parameters for 2.5G mode.

Unfortunately there is no additional information in the reference
manual other than
*step 4:
- Write 3h to EXT_TX_VBOOST_LVL.
- Write 4h to EXT_TX_TERM_CTRL

>
> Please consider using #defines, to give values names.
>
> ...
>
> > +static int s32g_serdes_init_clks(struct s32g_serdes *serdes)
> > +{
> > +     struct s32g_serdes_ctrl *ctrl = &serdes->ctrl;
> > +     struct s32g_xpcs_ctrl *xpcs = &serdes->xpcs;
> > +     int ret, order[2], xpcs_id;
> > +     size_t i;
> > +
> > +     switch (ctrl->ss_mode) {
> > +     case 0:
> > +             return 0;
> > +     case 1:
> > +             order[0] = 0;
> > +             order[1] = XPCS_DISABLED;
> > +             break;
> > +     case 2:
> > +     case 5:
> > +             order[0] = 1;
> > +             order[1] = XPCS_DISABLED;
> > +             break;
> > +     case 3:
> > +             order[0] = 1;
> > +             order[1] = 0;
> > +             break;
> > +     case 4:
> > +             order[0] = 0;
> > +             order[1] = 1;
> > +             break;
> > +     default:
> > +             return -EINVAL;
>
> AI review also flags that s32g_serdes_get_ctrl_resources() ensures that
> ss_mode is <= 5.  So this check is unnecessary.

okay but providing a default seems a good practice

>
> > +     }
> > +
> > +     for (i = 0; i < ARRAY_SIZE(order); i++) {
> > +             xpcs_id = order[i];
> > +
> > +             if (xpcs_id == XPCS_DISABLED)
> > +                     continue;
> > +
> > +             ret = s32g_xpcs_init_plls(xpcs->phys[xpcs_id]);
> > +             if (ret)
> > +                     return ret;
> > +     }
> > +
> > +     if (ctrl->ss_mode == 5) {
> > +             s32g_serdes_prepare_pma_mode5(serdes);
> > +
> > +             ret = s32g_xpcs_pre_pcie_2g5(xpcs->phys[1]);
>
> Also from the AI review:
>
>         In mode 5, code directly accesses xpcs->phys[1] without checking if
>         it was created. If XPCS1 wasn't created for some reason (DT
>         misconfiguration, probe failure), this NULL dereferences.

I will add a check

>
> ...
>
> > @@ -460,6 +741,41 @@ static int s32g2_serdes_create_phy(struct s32g_serdes *serdes, struct device_nod
>
> ...
>
> > +             xpcs = devm_kmalloc(dev, sizeof(*xpcs), GFP_KERNEL);
> > +             if (IS_ERR(xpcs)) {
> > +                     dev_err(dev, "Failed to allocate xpcs\n");
> > +                     return -ENOMEM;
> > +             }
>
> AI review also flags:
>
>         devm_kmalloc() returns NULL on failure, not an error pointer.
>         This check will never trigger.

okay

>
> [1] https://netdev-ai.bots.linux.dev/ai-local.html
>
> > +
> > +             xpcs_ctrl->phys[port] = xpcs;
> > +
> > +             xpcs->an = of_property_read_bool(dev->of_node, "nxp,xpcs_an");
>
> AI review flags that nxp,xpcs_an is not part of the binding.

That's a leftover that should be removed

>
> ...
>
> > +struct phylink_pcs *s32g_serdes_pcs_create(struct device *dev, struct device_node *np)
> > +{
> > +     struct platform_device *pdev;
> > +     struct device_node *pcs_np;
> > +     struct s32g_serdes *serdes;
> > +     u32 port;
> > +
> > +     if (of_property_read_u32(np, "reg", &port))
> > +             return ERR_PTR(-EINVAL);
> > +
> > +     if (port > S32G_SERDES_XPCS_MAX)
> > +             return ERR_PTR(-EINVAL);
> > +
> > +     /* The PCS pdev is attached to the parent node */
> > +     pcs_np = of_get_parent(np);
> > +     if (!pcs_np)
> > +             return ERR_PTR(-ENODEV);
> > +
> > +     if (!of_device_is_available(pcs_np)) {
> > +             of_node_put(pcs_np);
> > +             return ERR_PTR(-ENODEV);
> > +     }
> > +
> > +     pdev = of_find_device_by_node(pcs_np);
> > +     of_node_put(pcs_np);
> > +     if (!pdev || !platform_get_drvdata(pdev)) {
> > +             if (pdev)
> > +                     put_device(&pdev->dev);
> > +             return ERR_PTR(-EPROBE_DEFER);
> > +     }
> > +
> > +     serdes = platform_get_drvdata(pdev);
>
> Also from the AI review:
>
>         On success, the function gets a reference to pdev but never
>         releases it. This leaks a device reference every time a MAC driver
>         calls s32g_serdes_pcs_create().

will fix it

>
> > +
> > +     return &serdes->xpcs.phys[port]->pcs;
>
> Also from the AI review:
>
>         The check port > S32G_SERDES_XPCS_MAX allows port=2,
>         but array only has indices 0 and 1.
>
> Also I'm not seeing bounds checking on port in s32g2_serdes_create_phy
> which uses port as an index for the same array both directly and indirectly
> via s32g_serdes_xpcs_init().

will add it

>
> ...
>
> > diff --git a/drivers/phy/freescale/phy-nxp-s32g-xpcs.c b/drivers/phy/freescale/phy-nxp-s32g-xpcs.c
>
> ...
>
> > +static int s32g_xpcs_regmap_reg_read(void *context, unsigned int reg,
> > +                                  unsigned int *result)
> > +{
> > +     struct s32g_xpcs *xpcs = context;
> > +     u16 ofsleft = (reg >> 8) & 0xffffU;
> > +     u16 ofsright = (reg & 0xffU);
> > +
> > +     writew(ofsleft, xpcs->base + ADDR1_OFS);
> > +     *result = readw(xpcs->base + (ofsright * 4));
> > +
> > +     return 0;
> > +}
> > +
> > +static int s32g_xpcs_regmap_reg_write(void *context, unsigned int reg,
> > +                                   unsigned int val)
> > +{
> > +     struct s32g_xpcs *xpcs = context;
> > +     u16 ofsleft = (reg >> 8) & 0xffffU;
> > +     u16 ofsright = (reg & 0xffU);
> > +
> > +     writew(ofsleft, xpcs->base + ADDR1_OFS);
> > +     writew(val, xpcs->base + (ofsright * 4));
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct regmap_config s32g_xpcs_regmap_config = {
> > +     .reg_bits = 16,
> > +     .val_bits = 16,
> > +     .reg_read = s32g_xpcs_regmap_reg_read,
> > +     .reg_write = s32g_xpcs_regmap_reg_write,
> > +     .wr_table = &s32g_xpcs_wr_table,
> > +     .rd_table = &s32g_xpcs_rd_table,
> > +     .max_register = 0x1F80E1,
> > +};
>
> AI review also flags that s32g_xpcs_regmap_reg_read and
> s32g_xpcs_regmap_reg_write do not protect against concurrent access.

but regmap framework should

>
> ...

