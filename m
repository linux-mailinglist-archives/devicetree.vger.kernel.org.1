Return-Path: <devicetree+bounces-309950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RjNSMHSTKWrCZwMAu9opvQ
	(envelope-from <devicetree+bounces-309950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:40:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF3F66B947
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:40:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QaFMb8av;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309950-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309950-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8151B33B3418
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A0852D978A;
	Wed, 10 Jun 2026 16:16:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF342D1303
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:16:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781108190; cv=none; b=ExcCdi/sKwDJBJE2taxBYnMRU57tHkVRZsZPPjv6NMEvnDdOGlHXr73zF5xsBv5XAnyeL27mMCJtHSXx2U/RgbQ0oGPdRON/Xc/My5+iBEjl8LKx3jF3YOYcHQt1XsFylOn5GD5lsgEClQXf5XMwA41p5qOBTqRVLmt5SF2IoVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781108190; c=relaxed/simple;
	bh=PwQhu1z+5crkgR9b1HebsACJVxVoWjOcJ83WjGp85IM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RIyHMJjBqROmoUynRcBvRkgjbkbFyot/MUl0AS5g5ifA+Y6jULJAKrgoRg58KdCMCplSuIZL6PDAmIdBcuvXUisQb2IFHp4sF9dplWZB/TtBnpu8BSk3TpVIaDe8YE+YXqVEp+djAXKABfsl0DH4D3+U/W2/K6ZnIDpnpNPcDhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaFMb8av; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82B131F00899;
	Wed, 10 Jun 2026 16:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781108188;
	bh=CfaVnOIeKq6eG0IPa/2W53IauIgNTq+i65seOoUnRCg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QaFMb8avozmWOI2zT2yy2HS8Ve4BRqX4SOouLlWrD3zfqQkPyUAoXB5uU2foE/ojS
	 Rh8Gb/673LYeFzWe/fYXrSwDokEHql7QpAZZhj9XfJQLv7Sr3Uw9Hglz6DJK0eePjJ
	 ARN29ledyo9M6HPJ4xDH1A9NuOz4JJAT56ZmteTXzy/iT92vXOwNlWw3niBFZCButB
	 RGK3W+uO+4FH2JKG7545NKOfr7VCwiXS/PPxmA5GoMCr4mNOXasJjlJBS2shiRgfvC
	 LH1TBBegmVNfQqaRE7dVIiIwyPVX0hhHcCI4hhahXl5fcrraV18PSOmsyQusPbkXYs
	 MyE5ENF7NDgdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 11/12] net: pcs: airoha: add PCS driver for
 Airoha AN7581 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609151212.29469-12-ansuelsmth@gmail.com>
References: <20260609151212.29469-12-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 16:16:27 +0000
Message-Id: <20260610161628.82B131F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309950-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FF3F66B947

Thank you for your contribution! Sashiko AI review found 9 potential issue(=
s) to consider:
- [Critical] Passing the address of a local stack variable (`&priv`) to `fw=
node_pcs_add_provider()` causes a fatal use-after-free when dereferenced la=
ter.
- [High] A division by zero will occur during RX PR calibration if the freq=
uency output perfectly matches the target.
- [High] Integer underflow and misuse of the `abs()` macro on unsigned type=
s breaks frequency calibration.
- [High] The `pcs-airoha` module is silently not generated when configured =
as a loadable module (`M`).
- [High] Shared device-level hardware resets and PLL configurations disrupt=
 other active ports on multi-port devices.
- [High] Missing bounds check on user-provided device tree arguments leads =
to out-of-bounds array access.
- [High] Missing `FORCE_SEL` bits in `regmap_update_bits` values causes the=
 hardware to ignore the forced configurations.
- [Medium] `regmap_set_bits` performs a read-modify-write on Write-1-to-Cle=
ar (W1C) interrupt status registers, silently dropping unhandled interrupts.
- [Low] Missing `fallthrough;` or `break;` annotation in `switch` statement=
 causes an implicit fallthrough compiler warning.
--

commit a1f0ba4cb5341a223ae17b71c3dfd06228567ad5
Author: Christian Marangi <ansuelsmth@gmail.com>
Date:   Tue Jun 9 15:12:07 2026 +0000

net: pcs: airoha: add PCS driver for Airoha AN7581 SoC

This commit introduces the PCS driver for the Airoha AN7581 SoC, supporting
Ethernet, PON, PCIe, and USB SERDES. It implements phylink PCS operations a=
nd
handles the configuration of the PCS and PMA blocks.

> diff --git a/drivers/net/pcs/airoha/Makefile b/drivers/net/pcs/airoha/Mak=
efile
> new file mode 100644
> index 0000000000000..25cb8f090c214
> --- /dev/null
> +++ b/drivers/net/pcs/airoha/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-y                          :=3D pcs-airoha.o

[Severity: High]
Will this correctly build as a loadable module? It appears that using obj-y
forces static inclusion, which means the module won't be generated when
CONFIG_PCS_AIROHA is set to 'm'. Should this use obj-$(CONFIG_PCS_AIROHA)
instead?

> diff --git a/drivers/net/pcs/airoha/pcs-airoha-common.c b/drivers/net/pcs=
/airoha/pcs-airoha-common.c
> new file mode 100644
> index 0000000000000..ead0bc8083967
> --- /dev/null
> +++ b/drivers/net/pcs/airoha/pcs-airoha-common.c
[ ... ]
> +static int airoha_pcs_setup_scu(struct airoha_pcs_priv *priv,
> +                               int index, phy_interface_t interface)
> +{
[ ... ]
> +       /* TODO better handle reset from MAC */
> +       ret =3D reset_control_bulk_assert(ARRAY_SIZE(priv->rsts),
> +                                       priv->rsts);

[Severity: High]
Does unconditionally triggering these global reset lines disrupt other acti=
ve
ports on multi-port devices like PCIe? It seems that initializing a second
port will assert these resets and could drop the link on an already active
first port.

[ ... ]
> +static void airoha_pcs_interrupt_init_usxgmii(struct airoha_pcs_priv *pr=
iv,
> +                                             int index)
> +{
[ ... ]
> +       /* Clear any pending interrupt */
> +       regmap_set_bits(maps->usxgmii_pcs, AIROHA_PCS_USXGMII_PCS_INT_STA=
_2,
> +                       AIROHA_PCS_USXGMII_RPCS_FSM_DEC_ERR_INT |
> +                       AIROHA_PCS_USXGMII_R_TYPE_E_INT |
> +                       AIROHA_PCS_USXGMII_R_TYPE_T_INT |
> +                       AIROHA_PCS_USXGMII_R_TYPE_D_INT);

[Severity: Medium]
Could using regmap_set_bits() on a Write-1-to-Clear (W1C) interrupt status
register cause unhandled interrupts to be silently dropped? This performs a
read-modify-write, which might write back 1s to pending interrupts not
targeted by this bitmask. Should this use a direct regmap_write() instead?

[ ... ]
> +static void airoha_pcs_an_restart(struct phylink_pcs *pcs)
> +{
[ ... ]
> +       case PHY_INTERFACE_MODE_USXGMII:
> +               regmap_set_bits(maps->usxgmii_pcs, AIROHA_PCS_USXGMII_PCS=
_AN_CONTROL_0,
> +                               AIROHA_PCS_USXGMII_AN_RESTART);
> +               udelay(3);
> +               regmap_clear_bits(maps->usxgmii_pcs, AIROHA_PCS_USXGMII_P=
CS_AN_CONTROL_0,
> +                                 AIROHA_PCS_USXGMII_AN_RESTART);
> +       default:
> +               return;

[Severity: Low]
Does this missing break or fallthrough annotation trigger compiler warnings?
It looks like the PHY_INTERFACE_MODE_USXGMII case falls through to default
without explicitly declaring it.

[ ... ]
> +static struct phylink_pcs *airoha_pcs_get(struct fwnode_reference_args *=
pcsspec,
> +                                         void *data)
> +{
[ ... ]
> +       if (pcsspec->nargs)
> +               index =3D pcsspec->args[0];
> +
> +       return &priv->ports[index].pcs;

[Severity: High]
Is there a risk of an out-of-bounds array access here? The index is extract=
ed
directly from the device tree via pcsspec->args[0] without verifying if it =
is
less than priv->data->num_port.

[ ... ]
> +static int airoha_pcs_probe(struct platform_device *pdev)
> +{
[ ... ]
> +       priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
[ ... ]
> +       return fwnode_pcs_add_provider(dev_fwnode(dev), airoha_pcs_get,
> +                                      &priv);

[Severity: Critical]
Could passing the address of the local stack variable &priv cause a
use-after-free? When the MAC driver later calls airoha_pcs_get(), it will
dereference this stack pointer after airoha_pcs_probe() has returned. Should
this pass 'priv' instead of '&priv'?

> diff --git a/drivers/net/pcs/airoha/pcs-an7581.c b/drivers/net/pcs/airoha=
/pcs-an7581.c
> new file mode 100644
> index 0000000000000..22cf7b4b0108f
> --- /dev/null
> +++ b/drivers/net/pcs/airoha/pcs-an7581.c
[ ... ]
> +static void an7581_pcs_jcpll_bringup(struct airoha_pcs_priv *priv,
> +                                    int index, phy_interface_t interface)
> +{
[ ... ]
> +       /* This comment only apply to Serdes PCIe that expose
> +        * 2 PCS.
> +        *
> +        * The Serdes PCIe expose 2 PCS but always require
> +        * the PMA for the first PCS to be configured
> +        * for correct functionality for JCPLL.
> +        */
> +       pcs_pma =3D priv->pcs_pma[0];

[Severity: High]
Does forcing pcs_pma to index 0 clobber the active PLL configuration of Port
0 when Port 1 is being initialized? It appears this might disrupt the active
connection on the first port.

[ ... ]
> +static void an7581_pcs_tx_bringup(struct airoha_pcs_priv *priv,
> +                                 int index, phy_interface_t interface)
> +{
[ ... ]
> +       regmap_update_bits(pcs_pma, AIROHA_PCS_PMA_PXP_TX_TERM_SEL,
> +                          AIROHA_PCS_PMA_FORCE_SEL_DA_TX_CKIN_DIVISOR |
> +                          AIROHA_PCS_PMA_FORCE_DA_TX_CKIN_DIVISOR |
> +                          AIROHA_PCS_PMA_FORCE_SEL_DA_TX_TERM_SEL |
> +                          AIROHA_PCS_PMA_FORCE_DA_TX_TERM_SEL,
> +                          AIROHA_PCS_PMA_FORCE_SEL_DA_TX_CKIN_DIVISOR |
> +                          FIELD_PREP(AIROHA_PCS_PMA_FORCE_DA_TX_CKIN_DIV=
ISOR,
> +                                     ckin_divisor) |
> +                          FIELD_PREP(AIROHA_PCS_PMA_FORCE_DA_TX_TERM_SEL=
, 0x0));

[Severity: High]
Will the hardware ignore this forced configuration? The mask includes
AIROHA_PCS_PMA_FORCE_SEL_DA_TX_TERM_SEL, but the value part omits it, which
might clear the force override bit.

[ ... ]
> +static u32 an7581_pcs_rx_prcal_idac_major(struct airoha_pcs_priv *priv,
> +                                         int index, u32 target_fl_out)
> +{
[ ... ]
> +               fl_out =3D an7581_pcs_apply_cdr_pr_idac(priv, index, cdr_=
pr_idac_tmp);
> +
> +               /* Use absolute values to find the closest one to target =
*/
> +               fl_out_diff_new =3D abs(fl_out - target_fl_out);

[Severity: High]
Since fl_out and target_fl_out are both unsigned integers, doesn't this
subtraction cause an underflow if fl_out is less than target_fl_out? Also,
the abs() macro generally expects signed types. Could this cause the
calibration loop to become inaccurate?

[ ... ]
> +static u32 an7581_pcs_rx_prcal_idac_minor(struct airoha_pcs_priv *priv, =
int index,
> +                                         u32 target_fl_out, u32 cdr_pr_i=
dac_major)
> +{
[ ... ]
> +               fl_out_diff_new =3D abs(fl_out - target_fl_out);
[ ... ]
> +               if (fl_out_diff_new > fl_out_diff &&
> +                   (abs(fl_out_diff_new - fl_out_diff) * 100) / fl_out_d=
iff > 10) {

[Severity: High]
Is there a risk of a divide-by-zero condition here? If the initial fl_out
reading perfectly matches target_fl_out, fl_out_diff will evaluate to 0,
which would cause the division to panic the kernel.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609151212.2946=
9-1-ansuelsmth@gmail.com?part=3D11

