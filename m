Return-Path: <devicetree+bounces-275253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAwRFtMUtGlkgwAAu9opvQ
	(envelope-from <devicetree+bounces-275253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:44:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963A28424D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 30EE8324D63E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B563B9613;
	Fri, 13 Mar 2026 13:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UERPfxRW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0253B9608
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408301; cv=none; b=mPg1HUVi728wfQFYkwVWDB5Q9XYH/DWTFntfljEuddfFMylgUh4Y0ATswNuNfVfQJ1j7p04x1GZCDBk3u1qO3FiW72uD1/CGigZmeN/ZyQM4p6h7uZ5CnnT6GtmvnQUtYHxVlxKi9C1RuGic93M7ttTR5oxAZOedEIhH8qww0Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408301; c=relaxed/simple;
	bh=05lkidRgkYX4u94JvRMAQRYMhMl6EroU7eeEV4XMgtM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WHRc4HYbmXA0g3B3iZPqz1I/Up6rDicoHbH7czDVCTY4vgwm7c8tuFJp5SDfgGjLbzyIPrWMMIvaZcayF3qh7X2jUX72a92AqZka42PMV05tnwLrmTcVWmkU5cEjWd7CKCeWusYWNSSbu3u+3Vvl+6yBs8MpUAQN4uHfUCI2B70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UERPfxRW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3BBFC4AF09;
	Fri, 13 Mar 2026 13:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408301;
	bh=05lkidRgkYX4u94JvRMAQRYMhMl6EroU7eeEV4XMgtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UERPfxRWZwSyvA+CJinrifBL7unWAl9fvdV+SqD9qA+1fGMxXIvolK73vFWhkMLuS
	 jSrwkzB4njHTnRUj7B853pSlizCcuHvANrvx1gQzC2OmjDb/nJWGzPFAzdW62APmjD
	 Fg4ZLQCsphq2HWvF6y0B70R6K5x9zi//HKDTn4HSbl6Nueh3ejk5NEsf0aqpqplTEV
	 eB43Y5tuh8tEn7z95vAxhktcKO7q/QBT+nIp+Bh6V3yHF4kIa3ydvsmEPhXZhE+52g
	 inZyf+6MnT+QSKqM7C3Qc/43ByXhD6crm9UzaxDBkW2eiES/mchDqmyxmjb25M6C0O
	 sQ9wJEkl5UnhQ==
Date: Fri, 13 Mar 2026 13:24:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 3/6] riscv: apply page table attribute bits for
 XPbmtUC
Message-ID: <20260313-breezy-from-6b5ad9e9a5ac@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-4-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udfzb/ArxreH5LW+"
Content-Disposition: inline
In-Reply-To: <20260313084407.29669-4-ganboing@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275253-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4963A28424D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--udfzb/ArxreH5LW+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 01:44:04AM -0700, Bo Gan wrote:
> Apply the UC bit like Svpbmt and THEAD_MAE does. Also changed the
> _PAGE_PFN_MASK definition to exclude the UC bit, as it's position
> is now determined at runtime, and can be part of PPN.
>=20
> Signed-off-by: Bo Gan <ganboing@gmail.com>

This should be squashed with the patch adding detection and the Kconfig
option.

> ---
>  arch/riscv/include/asm/errata_list.h | 17 +++++++++++++++--
>  arch/riscv/include/asm/pgtable-64.h  |  9 ++++++++-
>  2 files changed, 23 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/riscv/include/asm/errata_list.h b/arch/riscv/include/as=
m/errata_list.h
> index 6694b5ccdcf85..ba0f3d4dd0cbb 100644
> --- a/arch/riscv/include/asm/errata_list.h
> +++ b/arch/riscv/include/asm/errata_list.h
> @@ -53,6 +53,16 @@ asm(ALTERNATIVE(	\
>  	: /* no inputs */	\
>  	: "memory")
> =20
> +#ifdef CONFIG_64BIT
> +#define ALT_PAGE_CUST_BIT(_bit)						\
> +asm(ALTERNATIVE("li %0, 0\t\nnop",					\
> +		"1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
> +		      "ld %0, %%pcrel_lo(1b)(%0)", 0,			\
> +			RISCV_ISA_EXT_XPBMTUC,				\
> +			CONFIG_RISCV_ISA_XPBMTUC)			\
> +		: "=3Dr"(_bit))
> +#endif
> +
>  /*
>   * _val is marked as "will be overwritten", so need to set it to 0
>   * in the default case.
> @@ -60,11 +70,14 @@ asm(ALTERNATIVE(	\
>  #define ALT_SVPBMT_SHIFT 61
>  #define ALT_THEAD_MAE_SHIFT 59
>  #define ALT_SVPBMT(_val, prot)						\
> -asm(ALTERNATIVE_2("li %0, 0\t\nnop",					\
> +asm(ALTERNATIVE_3("li %0, 0\t\nnop",					\
>  		  "li %0, %1\t\nslli %0,%0,%3", 0,			\
>  			RISCV_ISA_EXT_SVPBMT, CONFIG_RISCV_ISA_SVPBMT,	\
>  		  "li %0, %2\t\nslli %0,%0,%4", THEAD_VENDOR_ID,	\
> -			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE)	\
> +			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE,	\
> +		  "1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
> +			"ld %0, %%pcrel_lo(1b)(%0)", 0,			\
> +			RISCV_ISA_EXT_XPBMTUC, XPBMTUC_HAS##prot)	\
>  		: "=3Dr"(_val)						\
>  		: "I"(prot##_SVPBMT >> ALT_SVPBMT_SHIFT),		\
>  		  "I"(prot##_THEAD >> ALT_THEAD_MAE_SHIFT),		\
> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm=
/pgtable-64.h
> index 1a6d04884111d..aab6990d92238 100644
> --- a/arch/riscv/include/asm/pgtable-64.h
> +++ b/arch/riscv/include/asm/pgtable-64.h
> @@ -76,7 +76,14 @@ typedef struct {
>   * | 63 | 62 61 | 60 54 | 53  10 | 9             8 | 7 | 6 | 5 | 4 | 3 |=
 2 | 1 | 0
>   *   N      MT     RSV    PFN      reserved for SW   D   A   G   U   X  =
 W   R   V
>   */
> -#define _PAGE_PFN_MASK  GENMASK(53, 10)
> +static inline u64 riscv_pfn_mask(void)
> +{
> +	u64 cust_bit;
> +
> +	ALT_PAGE_CUST_BIT(cust_bit);
> +	return GENMASK(53, 10) ^ cust_bit;
> +}
> +#define _PAGE_PFN_MASK  riscv_pfn_mask()
> =20
>  /*
>   * [63] Svnapot definitions:
> --=20
> 2.34.1
>=20

--udfzb/ArxreH5LW+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQQKAAKCRB4tDGHoIJi
0rTrAP9idBaaUTjEQII58LnomdoIaRZ94azL4xZjKiCZNcz7dgEA3p8stxS1Q6ah
9aWfVTsiho43IARnT/EmXKNFQAk5ygo=
=pFvp
-----END PGP SIGNATURE-----

--udfzb/ArxreH5LW+--

