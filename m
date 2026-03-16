Return-Path: <devicetree+bounces-275993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLahF1e9t2mpUgEAu9opvQ
	(envelope-from <devicetree+bounces-275993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:20:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA76429613F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B90BB3006837
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77C8B355F2A;
	Mon, 16 Mar 2026 08:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKPid3mN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DE034DCCC;
	Mon, 16 Mar 2026 08:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773648686; cv=none; b=ZuNl+P7GQ/eSFPTas4wSzevYG3qKQ1aCLAJZ1668CBoqryFFH24BwBluu5hUM9/1xpeyRvusnqatODYo3dc4xtkrpoNGz8/Si4uDojPelmEsC6lh2q4ZePMyxerxOnKT2LGzsD3ns/2Rv+MawOWN16KTbpJ08GpSfJMjtdTlDKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773648686; c=relaxed/simple;
	bh=2/U22xyL14hpwzS+OtJ8KVxawev/mlvdeT5ndUJfiak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZTgR7gd/WVqxiBkwClTx/SNSPBIJisCWvsCwC9PNnNObhpYhpFrJFV4sgmkOBd6qUFqdNYM7F+LdS//uFjuTcTWZbBASSsz19kDJ1nhMiwrQv5hUXHC+ErZz5BRjKEM1EPJqz4Ko2NeNgXstzQESKIgC4CefFT8uaBA93crPmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKPid3mN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D399C19421;
	Mon, 16 Mar 2026 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773648685;
	bh=2/U22xyL14hpwzS+OtJ8KVxawev/mlvdeT5ndUJfiak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vKPid3mNQixso9Q5ycyABdADX0CqKUH6PGjRBtrVDxt1AIlWes4vtmf9aAHRvZUSD
	 G7AarnVVHvmIdMxX42IyPFW9z2rfQOLkvalgsomLpMKSDCqlRHlAeHETLpGMqpYyki
	 91KgLS8X8RFaHmB01GniI5Ubv3ZGIm5enHeee2hJfy67S3Bv7wqgfWiOepD3r235fS
	 P/89bTNIrS349p8+AeJ/i2EotHv9ezc1YGdpBs4/YJ2bjwqjabJPzmblUzjdOSOlQD
	 xEezynDm9ZCxDrlQ84SES5BxC46cglXeSII4uC6uJQL54LyyFp6RMZX6lSaUZaHuZx
	 zTIYvm9dQthHg==
Date: Mon, 16 Mar 2026 09:11:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Yao Zi <me@ziyao.cc>
Subject: Re: [PATCH v2 1/2] dt-bindings: serial: update bindings of ultrarisc
 dp1000 uart
Message-ID: <20260316-uptight-dachshund-of-grandeur-fbee0f@quoll>
References: <20260316-ultrarisc-serial-v2-0-6ab3e7fa891c@ultrarisc.com>
 <20260316-ultrarisc-serial-v2-1-6ab3e7fa891c@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260316-ultrarisc-serial-v2-1-6ab3e7fa891c@ultrarisc.com>
X-Spamd-Result: default: False [9.34 / 15.00];
	URIBL_BLACK(7.50)[ziyao.cc:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275993-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c09:e001:a7::/64:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,ziyao.cc:email,ultrarisc.com:email]
X-Rspamd-Queue-Id: EA76429613F
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Mon, Mar 16, 2026 at 02:33:22PM +0800, Jia Wang wrote:
> Add DP1000 UART compatible information

We see this from the diff. Why this is not compatible with
snps,dw-apb-uart? What are the differences. You have entire commit msg
to explain the hardware.

> 
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> Reviewed-by: Yao Zi <me@ziyao.cc>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 6efe43089a74..0040ed28e35b 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -78,6 +78,8 @@ properties:
>                - starfive,jh7100-uart
>                - starfive,jh7110-uart
>            - const: snps,dw-apb-uart
> +      - items:

Drop, not needed.

> +          - const: ultrarisc,dp1000-uart
>        - const: snps,dw-apb-uart

So just enum with the snps one.

Best regards,
Krzysztof


