Return-Path: <devicetree+bounces-5776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 192A07B7DC5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BF7922814D0
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FAA7111B5;
	Wed,  4 Oct 2023 11:05:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FA411182
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:05:56 +0000 (UTC)
X-Greylist: delayed 177 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 04 Oct 2023 04:05:53 PDT
Received: from mo4-p02-ob.smtp.rzone.de (mo4-p02-ob.smtp.rzone.de [81.169.146.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98C3FA1
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 04:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696417368; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=dCA49fbq2rVI+T8KkVstZCSbxA5crhB/GEswf5VJvYpadlTH+Zh3MjRmrJr25/6EPY
    L0QGFYFv++GyVzBK4ZfteDv4vZtiP/+Q/kGKYBzDd3Z3Zc41G1AAGSOryB8zLKTT7rrC
    x4fOxYdnT2K/GN/5xwBgWwzsUSsXEo0SQVeM+b80roaoHuJSOuskySwsOKEM5PNUgZ7k
    v9fStjUii4RQnCI2XAht4IdEYmMjPsxcjlxGH4/hgGQJUDDEJbDlRY3i1CJv+TKnD0yG
    dMybcQUCgf2tNt8iz+RjSD/bPm13hs53oFRYzTy7zzLS8DqKDHZNaNaP0pty0Bhg6l5o
    VVTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1696417368;
    s=strato-dkim-0002; d=strato.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=8ID9pS/Rg3uFucvPMj7KGp+j6CQ1g8OjzTowgUR2WNs=;
    b=FqAwSL7e8pI92Wsgll54Gg057BiVKsczFgURaSXUZochf/FL+J5iN41dRi+a17E6II
    8zUJz0m8jor6vbvExcfP1qVxhYkgZFg2lL8EZX5Cbp/YrkN3aIIq8MyPALNgydXSg77W
    dJBw2D9yiyPuPHkV9Zh7bryt4pLqnRqfhrgFS/sfKKwl3gewK27zWg987OqR57qdHpHG
    yNEunEXqMJXCp8x9IHfh3B+3NRGn3f3z35Wq1C9fgtLclEfka4TzZ4ri2ziAqHTz+0Jy
    xbNoRWiDlmj6YPr1Am18I1IRgdVmM7+FsVnVMYoYoBmmr+Jmsx778Osi004qtP62PzQN
    jebA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1696417368;
    s=strato-dkim-0002; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=8ID9pS/Rg3uFucvPMj7KGp+j6CQ1g8OjzTowgUR2WNs=;
    b=i90OP4X76C8LB8k1TPSjgopiJuCcl6DwgvevsEa6ZaeE5t6BM4Onea8x7DM/N041QT
    uijL3V7wWPW1X+SsEKL8A6EqE+2VYZdGp7yF01/Z2AKBi/9OJ+6pMNaNklplXf5hUEiQ
    RwOiRUd0arV+EEqB5E0f7r2IElwhHFLXi+bO0Fm4CUKBajSXOYvJHZx/P4eX0yA7XFxp
    NJSRMJhGO5h2nnwIG/qC19TztJgLPehs/UcyM5Rub+1SwMclQV34fOvhDu3CfvzNd3T6
    sUETor015U9BdmlxmJ4tW2zP11K+8pVTuR8vDdAYTyMRyQaoUQD0gYx9/Hg7DNyHfvH6
    dVug==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1696417368;
    s=strato-dkim-0003; d=goldelico.com;
    h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Cc:Date:
    From:Subject:Sender;
    bh=8ID9pS/Rg3uFucvPMj7KGp+j6CQ1g8OjzTowgUR2WNs=;
    b=0KUrHGn74HoNopT44Qrd1SFrn4GkymE6tpeifgbCM4rsWoWRy0CTsaNPe9iCGqHqBL
    iKnqQk87sUykNVE7WvDA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Apz9PSN6LgsXcGeo3Q="
Received: from smtpclient.apple
    by smtp.strato.de (RZmta 49.8.2 DYNA|AUTH)
    with ESMTPSA id Y04dd7z94B2mirY
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Wed, 4 Oct 2023 13:02:48 +0200 (CEST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
Subject: Re: [PATCH] ARM: dts: omap3-gta04: Drop superfluous omap36xx
 compatible
From: H. Nikolaus Schaller <hns@goldelico.com>
In-Reply-To: <20231004065323.2408615-1-andreas@kemnade.info>
Date: Wed, 4 Oct 2023 13:02:47 +0200
Cc: bcousson@baylibre.com,
 Tony Lindgren <tony@atomide.com>,
 robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org,
 linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <60C495CE-E688-4A9A-A79A-8DFBED5E869C@goldelico.com>
References: <20231004065323.2408615-1-andreas@kemnade.info>
To: Andreas Kemnade <andreas@kemnade.info>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Andreas,

> Am 04.10.2023 um 08:53 schrieb Andreas Kemnade <andreas@kemnade.info>:
>=20
> Drop omap36xx compatible as done in other omap3630 devices.
> This has apparently fallen through the lattice.
>=20
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi =
b/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
> index b6b27e93857f..3661340009e7 100644
> --- a/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
> +++ b/arch/arm/boot/dts/ti/omap/omap3-gta04.dtsi
> @@ -11,7 +11,7 @@
>=20
> / {
> 	model =3D "OMAP3 GTA04";
> -	compatible =3D "goldelico,gta04", "ti,omap3630", "ti,omap36xx", =
"ti,omap3";

there seem to be some more references to ti,omap36xx:

arch/arm/boot/dts/ti/omap/omap3-lilly-a83x.dtsi:	compatible =3D =
"incostartec,omap3-lilly-a83x", "ti,omap3630", "ti,omap36xx", =
"ti,omap3";
arch/arm/mach-omap2/board-generic.c:	"ti,omap36xx",
drivers/clk/ti/dpll.c:	     of_machine_is_compatible("ti,omap36xx")) &&
drivers/cpufreq/ti-cpufreq.c:	{ .compatible =3D "ti,omap36xx", .data =3D=
 &omap36xx_soc_data, },

So are you sure that we can remove it without replacement or code fixes =
in dpll and cpufreq (board-generic is probably no issue)?

Especially. in ti-cpufreq. the compatible "ti,omap3630" is tagged as =
"legacy".
So shouldn't "ti,omap3630" be dropped?

So maybe the other devices where it has been dropped are now broken...

> +	compatible =3D "goldelico,gta04", "ti,omap3630", "ti,omap3";
> 	cpus {
> 		cpu@0 {
> 			cpu0-supply =3D <&vcc>;
> --=20
> 2.39.2
>=20

BR,
Nikolaus=

