Return-Path: <devicetree+bounces-313288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m4VcBrKkM2puEgYAu9opvQ
	(envelope-from <devicetree+bounces-313288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:56:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4A869E426
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:56:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RO+b+t+l;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313288-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313288-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94B383021864
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:53:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1DB3D6CAA;
	Thu, 18 Jun 2026 07:53:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5DB3C5DBA
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:53:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781769235; cv=none; b=MB6VE3kF6jhE5S2JfiuOLNxbVP3nugkak0ZbcXB2NM13rn8lfRP+l09MBsMg1dzanrAxd8uCBc+cIYc5lB/49VY7edNtCawoafP4N5V+VB7T9xAlanEn05vNRN0CJHk0Lb/0m9Dt6X8reuSfzOjUwGJCb+46sYMuAahFk2nsaTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781769235; c=relaxed/simple;
	bh=BHIVK1HPBV3FIcpYxHNKIE+V5E+LwyE0FQjMsN4oe88=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OfznfTZyjohmILE/v6c2itHloRiOB7OlnitboVkFuz/I+S4+K3AjSPczzzl1Y3VkvZcuR8hwC+cIjvb1WinI//zYt0zh7ZbE62/AshP3r97BaMM1jHczXm29YXGLsvpe/ssMQJ3/SOlEQx516TxvRVmUXaIVADimS2HfxZOsAB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO+b+t+l; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C53C81F000E9;
	Thu, 18 Jun 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781769234;
	bh=5Ni+5SGyfbMy9AbOvdA4O5byAdPrkWJyn9DC+GtBu5g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RO+b+t+lN8xQLpwPaOBPeGbra+G5rW9mCe3kmZZujzkEgbuRo8qFHGedkAxGnvZXA
	 lXc2sHuiYVBoGCSDA84itiuhlpfF4IviAy2/Kc4x/ybI5jHzkOKhiFKyPoOVuT8xSC
	 tvBFh5GWKi/H0esQtykYkh1SSfXtTGb2b13qTeyG/BX7ICe3SzFhuGdn/F0omkdpFT
	 jvHV6i3PfNrlCKdmbDfNzFQv6Q1R9loNE5jVgDuf0BgJlvehBlsS2AKc7U3p0xYm+P
	 baQqyVF/OHBd/Vn8aSq2yOWybRdya7ZVbkA1i7BKV050OoFx2J037Ye6ZgTJV06tbp
	 WEH0/5pJwAwTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 11/16] spi: cadence-quadspi: enable PHY for direct
 reads
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618073725.84733-12-s-k6@ti.com>
References: <20260618073725.84733-1-s-k6@ti.com>
 <20260618073725.84733-12-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 07:53:53 +0000
Message-Id: <20260618075353.C53C81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313288-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,ti.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B4A869E426

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Critical] Unaligned and small direct reads bypass the PHY but execute at=
 maximum frequency, risking silent data corruption.
- [High] Failure to enable the PHY leaves the SPI controller permanently co=
rrupted and hardware state inconsistent.
- [High] Blindly decrementing the dummy cycle count in `cqspi_tune_phy()` c=
auses integer underflow for operations requiring 0 dummy cycles.
--

commit a2e81b0959397afcae6ba4e607025256559b31dd
Author: Santhosh Kumar K <s-k6@ti.com>

spi: cadence-quadspi: enable PHY for direct reads
   =20
Add cqspi_tune_phy() to toggle PHY mode. Enabling sets the calibrated
read-capture delay, asserts PHY_EN and PHY_PIPELINE, and decrements the
dummy cycle count by one since the PHY pipeline absorbs that latency.
Disabling reverses all three. Disable is best-effort.

> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-=
quadspi.c
> index 5f992fee790a4..eb6baa797c78e 100644
> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c

[ ... ]

> @@ -565,6 +565,61 @@ static void cqspi_readdata_capture(struct cqspi_st *=
cqspi, const bool bypass,
>  	writel(reg, reg_base + CQSPI_REG_READCAPTURE);
>  }
> =20
> +static int cqspi_tune_phy(struct cqspi_flash_pdata *f_pdata, bool enable)
> +{
> +	struct cqspi_st *cqspi =3D f_pdata->cqspi;
> +	void __iomem *reg_base =3D cqspi->iobase;
> +	u32 reg;
> +	u8 dummy;
> +
> +	if (enable) {

[ ... ]

> +		/*
> +		 * The PHY data-capture pipeline absorbs one dummy cycle's
> +		 * worth of latency; reduce the count to avoid over-compensation.
> +		 */
> +		reg =3D readl(reg_base + CQSPI_REG_RD_INSTR);
> +		dummy =3D FIELD_GET(CQSPI_REG_RD_INSTR_DUMMY_MASK
> +					  << CQSPI_REG_RD_INSTR_DUMMY_LSB,
> +				  reg);
> +		dummy--;

[Severity: High]
If the current SPI operation legitimately requires 0 dummy cycles
(e.g., standard 0x03 read commands, or during indirect writes), does dummy
underflow to 255 here?

If it does underflow, FIELD_PREP would mask this to 31 dummy cycles, which
could cause the controller to wait for 31 dummy cycles instead of 0,
resulting in shifted data.

Also, if the operation has 0 dummy cycles, does the PHY pipeline absorb
the first cycle of valid data instead of a dummy cycle?

> +		reg &=3D ~(CQSPI_REG_RD_INSTR_DUMMY_MASK
> +			 << CQSPI_REG_RD_INSTR_DUMMY_LSB);
> +		reg |=3D FIELD_PREP(CQSPI_REG_RD_INSTR_DUMMY_MASK
> +					  << CQSPI_REG_RD_INSTR_DUMMY_LSB,
> +				  dummy);
> +		writel(reg, reg_base + CQSPI_REG_RD_INSTR);
> +	} else {

[ ... ]

> +	}
> +
> +	return cqspi_wait_idle(cqspi);
> +}

[ ... ]

> @@ -1442,6 +1497,14 @@ static ssize_t cqspi_write(struct cqspi_flash_pdat=
a *f_pdata,
>  	return cqspi_indirect_write_execute(f_pdata, to, buf, len);
>  }
> =20
> +static bool cqspi_use_tuned_phy(struct cqspi_flash_pdata *f_pdata,
> +				const struct spi_mem_op *op,
> +				u32 post_config_max_speed_hz)
> +{
> +	return f_pdata->use_tuned_phy &&
> +	       op->max_freq =3D=3D post_config_max_speed_hz;
> +}

[Severity: High]
Could we enforce that op->dummy.nbytes > 0 here before authorizing the
use of the tuned PHY, to prevent the integer underflow when extracting
the dummy count in cqspi_tune_phy()?

> +

[ ... ]

> @@ -1543,8 +1606,11 @@ static int cqspi_direct_read_execute(struct cqspi_=
flash_pdata *f_pdata,

[ ... ]

>  	if (!cqspi->rx_chan || !virt_addr_valid(buf) ||
>  	    len < CQSPI_PHY_MIN_DIRECT_READ_LEN) {
>  		cqspi_memcpy_fromio(op, buf, cqspi->ahb_base + from, len);
>  		return 0;
>  	}
> =20
> -	return cqspi_direct_read_dma(f_pdata, buf, from, len);
> +	if (!cqspi_use_tuned_phy(f_pdata, op, post_config_max_speed_hz))
> +		return cqspi_direct_read_dma(f_pdata, buf, from, len);
> +
> +	/* Split into unaligned head, aligned middle, unaligned tail */
> +	from_aligned =3D ALIGN(from, 16);
> +	to_aligned =3D ALIGN_DOWN(from + len, 16);
> +	len_aligned =3D to_aligned - from_aligned;
> +
> +	if (from !=3D from_aligned) {
> +		ret =3D cqspi_direct_read_dma(f_pdata, buf, from,
> +					    from_aligned - from);

[Severity: Critical]
If PHY tuning is required to reliably capture data at the maximum frequency
(post_config_max_speed_hz), does bypassing the calibrated capture delays for
unaligned head/tail bytes (or reads < 17 bytes) force the controller to use
untuned static capture delays?

Capturing data at high frequencies without the necessary PHY calibration mi=
ght
result in shifted data.

To safely support unaligned direct reads with the PHY, should the driver
perform aligned, PHY-enabled reads into a bounce buffer, or strictly lower
the SPI clock frequency prior to reading without the PHY?

> +		if (ret)
> +			return ret;
> +		buf +=3D from_aligned - from;
> +	}
> +
> +	if (len_aligned) {
> +		ret =3D cqspi_tune_phy(f_pdata, true);
> +		if (ret)
> +			return ret;

[Severity: High]
If cqspi_wait_idle() fails inside cqspi_tune_phy() and returns an error,
this error is propagated immediately without calling
cqspi_tune_phy(..., false).

Could this leave the hardware registers (like the decremented dummy cycle
count, PHY_EN, and PHY_PIPELINE) in an inconsistent state for subsequent SPI
operations?

Also, will subsequent retries to enable the PHY decrement the dummy count a
second time, cumulatively altering the hardware state?

> +		ret =3D cqspi_direct_read_dma(f_pdata, buf, from_aligned,
> +					    len_aligned);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618073725.8473=
3-1-s-k6@ti.com?part=3D11

