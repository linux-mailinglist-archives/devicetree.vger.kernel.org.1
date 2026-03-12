Return-Path: <devicetree+bounces-274512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBzwAEGNsmkQNgAAu9opvQ
	(envelope-from <devicetree+bounces-274512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:54:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42F26FE81
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 56A6930193A6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE0C3BAD91;
	Thu, 12 Mar 2026 09:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SSo3A8KD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA62B388E63
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 09:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773309243; cv=pass; b=dsDOTOUgOfhF1fzn3NVGrUlPlJfUrkWLhAkTEdnTkrRpAZgPxwMU2kwiDHRhdbltpBapX61FVQhF9xx3vdOigJtpqCpNRUgBTci09qRVK7Fr5uaz7BNUnudNYhw9MVDKyAI9/v4wgWbHka660NVQ7kiIW0bMNFx0+nHq7d0XYEA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773309243; c=relaxed/simple;
	bh=KrV1H2NLInpKlc/gmuUp2Q3dWu4kreAEUmzL94kC14k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CuwoaeNVKl4Ik0gGmfgikr7Zt3X2tFxPTBUiNoRurPDMgVa3kIQ7kZTbrIeXdzHys5nXIShaCzAey17P/rGKEiwnwb2NHZmCoX2sKzDhXmHI3ASRRDAbPF3YU5YKGWXkqQGMEaZNN2Iuhkg7zjgQjKo5460MoJQ0tejErIAjXgg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SSo3A8KD; arc=pass smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c73d361f0cdso243365a12.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 02:54:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773309240; cv=none;
        d=google.com; s=arc-20240605;
        b=LL9joBNEqZLXw7FPkAbctRqGtbAz5afuyJhmYf7W62OeLJIPV/qbi3jA7X50FsReK2
         BJJPEjYWtKVSZJweGT+Pfcx2kKiBt42HABVRljaNrfMeLBJHdYJvysosBKZM6i/Qb6f8
         JrNL6up5vfJIVM18Q/GH00a1pYaND2Nk2ZmVNtqe4KEAYtU0LGkM+jmHbuEBCjHU178l
         VLhwpq19eHMrXOsHE/uwPpFBdVyeZGk9GZCHrPFYPS1sVERk4+j4nQkcNqnodCjw4U4a
         29uc5oK2QC0KEuaOA57qzBPvORrnAkiJr94rtb5V0q2iAz5yySvh4FcmZATka+X+73KK
         hjig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Pu5XIQSGCkSF/OV0YlHjxKCm6okhTIDdYRaAvJzmT7M=;
        fh=4PhAb8BoqGi27qRTOWh6nzbz3FKCQ4e1ur9mB678rsI=;
        b=W5ufwMfpU1ttH6PV8StWpueCdMuCWwDvy4Myx0E2Ge7XNPJzJ9QPBeJcCqxGr84VqK
         MxLHw7jn5YDhhXYKwvKLtOoGLXOMCim/3vp4FnHbGYDpSj0aSmXonavFtNJwtwq8Ijp/
         9MGdjT6Aad6CUpNmquXkfc+Qgrp66Y58OKV9znAO5AqTQHSRwmFDc1qjSxAP+8U86ut+
         SMKYnTRBpl6vs9xnm2B33VHXYkY/F0Eq3iOl/1aIgE6qRg/rL2C6XWdxqqglS4fUZPkE
         18T5nAH56aSHU9Z9ir6eQpxCx9/9cl3DEr7PDLAHnQBRC6IjBNH6DvpCBZV9VDqo552D
         bJDg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773309240; x=1773914040; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pu5XIQSGCkSF/OV0YlHjxKCm6okhTIDdYRaAvJzmT7M=;
        b=SSo3A8KDF1XPqCV+9INJ8p36V8EfeMmTUA6xvAYl+0DK1mvP6fUJVcUuXoAC7GoL1d
         dGmKmIhTCjvQm72WWBLWqMyIzug7N7QSWzte8GEtzOMr8Yb9tuTjVEl1a1bvOY2/QKT0
         k4QsHJiE83/9m/+iIRNW5e9L+q0xKv3mKm4Dn2zKgH0ep97/aOnXXx/zy0EBVi4MLfsW
         0l8zyyqYjCA/+C7MtALjN/jT6rCSWJpi/mrDL7YXg4z7p8mrOkNALQRafXJIvRsCHJLt
         Wt+G+x59rMxDPmwAbgYAOkHpaG1qLCD6CN2MPWoYo5P08WEGLQUSMiHnVVRjm9enFZUG
         E6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773309240; x=1773914040;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pu5XIQSGCkSF/OV0YlHjxKCm6okhTIDdYRaAvJzmT7M=;
        b=p+ZC9wCVrLHKS77pz6LoyEFdT2APV1NbnFqhBNtXdrrtkeQM/XKMIlzlBdWeOHkz5q
         8aP5ZuAkGCyjwaXXBBru7Jv/qTfhZuXLMGkrR1OrvgO650UiV4Uc6Qc95BgigbPXVn4B
         TeC1LrV2rESyVxVbwgLOnG/PTHvLlMQy9IiCqgLmXbbwLrrV61JumKuDdQJ76TbPkoJ/
         jlHDxRd42H6c4aeluLVOMu2Fa3PglhOvjxS6y/rpDe4ZPzSGqMEHd5FKZRWZ1Bdp3SPg
         e8GwcUfazt8228sUHechONtOHuslcLjfEjE+fTqMtRwBsS+H7M4WnDxfin+LwStNG7H/
         K5KA==
X-Forwarded-Encrypted: i=1; AJvYcCWwHOrxTlpwZebDKdUWaxTxEDNd6ktutSKN/cZwd1zcVJ/Q4DudWMPIMZT5rMCEXVZQICfFehpmF4IW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8USuRg2fFJaHKPCkmsdVnETa7zhpOwAU6FIbSFUmqwCzsG6Gl
	BF+j47NjG7rvi5ycCTwQmOvJFwf8KHdGhf83Uq7KBaBE0P4Dw4DG80zyU39eZGrbmAi5vfSlGHz
	sQYiqkZWzWuid42RHTFZBBWDrzV1kc2o=
X-Gm-Gg: ATEYQzwpVa29+zU3xrDmm0T5l14cGAwMTETlw1NoaAgO081JqDbGJdts9zCSRQFRzeQ
	5+6zO/WFotiZkptTYZn891qAVuvS6pldUOKa7kAxyQ11AHU9n2EvnVX18yAH/dqZ9v3OViWL1Hp
	hmp5O2XjdAzy68pUUrqaHP+YWVBLPswm5/dg0qtqMMBmozjc2ajxsXHrQ3nSFem/Xtfh3/z2bvv
	08LgsA8hNenr5I0zgNbzCa87JJRUw7MP8sUh+3GuMF+Y3BXlweyGN2PgyrtIqHs2RZx8nZak2hB
	k5liMLUaebLWJttMDA==
X-Received: by 2002:a17:902:e950:b0:2aa:d506:d189 with SMTP id
 d9443c01a7336-2aeae89463fmr59366865ad.34.1773309239948; Thu, 12 Mar 2026
 02:53:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312034912.4007057-1-shengjiu.wang@nxp.com>
 <20260312034912.4007057-2-shengjiu.wang@nxp.com> <af948fb4-4f63-4276-9368-9d41e80c3e7c@oss.nxp.com>
 <CAA+D8AO2-C8kRiF3ymYd7fvAL_Op5ohwk=m8ZbfjHUWXCSn_3g@mail.gmail.com> <8b4f6c08-9d4a-4af6-80a3-9e3a351ce451@oss.nxp.com>
In-Reply-To: <8b4f6c08-9d4a-4af6-80a3-9e3a351ce451@oss.nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 12 Mar 2026 17:53:42 +0800
X-Gm-Features: AaiRm52mG1WKwAEkIuooQ_iRETrNiaYWjlFWELMoCo_5r-yCY-ygySmvazvcFFw
Message-ID: <CAA+D8APVjeyPEypiJYXJLWEf6ye6c3EPb=DKBfLnBxOYoNGUOg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: imx952: Add audio device nodes
To: Daniel Baluta <daniel.baluta@oss.nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274512-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,42c40000:email,2.144.32.192:email]
X-Rspamd-Queue-Id: 6B42F26FE81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 3:10=E2=80=AFPM Daniel Baluta <daniel.baluta@oss.nx=
p.com> wrote:
>
> On 3/12/26 08:54, Shengjiu Wang wrote:
> >> On 3/12/26 05:49, Shengjiu Wang wrote:
> >>> Add audio device nodes, include SAI, MICFIL, ASRC, Audio Mixer.
> >>>
> >>> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> >>> ---
> >>>  arch/arm64/boot/dts/freescale/imx952.dtsi | 199 ++++++++++++++++++++=
++
> >>>  1 file changed, 199 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/freescale/imx952.dtsi b/arch/arm64/b=
oot/dts/freescale/imx952.dtsi
> >>> index 0f86b5626cdd..5787c12e788f 100644
> >>> --- a/arch/arm64/boot/dts/freescale/imx952.dtsi
> >>> +++ b/arch/arm64/boot/dts/freescale/imx952.dtsi
> >>> @@ -823,6 +823,156 @@ usdhc3: mmc@42c40000 {
> >>>                       };
> >>>               };
> >>>
> >>> +             aips5: bus@43000000 {
> >>> +                     compatible =3D "fsl,aips-bus", "simple-bus";
> >>> +                     reg =3D <0 0x43000000 0 0x800000>;
> >>> +                     #address-cells =3D <1>;
> >>> +                     #size-cells =3D <1>;
> >>> +                     ranges =3D <0x43000000 0x0 0x43000000 0x800000>=
;
> >>> +
> >>> +                     asrc1: asrc@43000000 {
> >>> +                             compatible =3D "fsl,imx952-asrc";
> >>> +                             reg =3D <0x43000000 0x10000>;
> >>> +                             interrupts =3D <GIC_SPI 376 IRQ_TYPE_LE=
VEL_HIGH>;
> >>> +                             clocks =3D <&scmi_clk IMX952_CLK_BUSWAK=
EUP>,
> >>> +                                      <&scmi_clk IMX952_CLK_BUSWAKEU=
P>,
> >>> +                                      <&scmi_clk IMX952_CLK_ASRC1>,
> >>> +                                      <&scmi_clk IMX952_CLK_ASRC2>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>,
> >>> +                                      <&clk_dummy>;
> >>> +                             clock-names =3D "mem", "ipg",
> >>> +                                           "asrck_0", "asrck_1", "as=
rck_2", "asrck_3",
> >>> +                                           "asrck_4", "asrck_5", "as=
rck_6", "asrck_7",
> >>> +                                           "asrck_8", "asrck_9", "as=
rck_a", "asrck_b",
> >>> +                                           "asrck_c", "asrck_d", "as=
rck_e", "asrck_f",
> >>> +                                           "spba";
> >>> +                             dmas =3D <&edma2 97 0 0>, <&edma2 98 0 =
0>, <&edma2 99 0 0>,
> >>> +                                    <&edma2 100 0 1>, <&edma2 101 0 =
1>, <&edma2 102 0 1>;
> >> For consistency we should use symbolic macros for directions like you =
did below.
> >> Use FSL_EDMA_RX for rx direction and also introduce FSL_EDMA_TX for tx=
 direction.
> > Yes, should use FSL_EDMA_RX.
> >
> > But introduce FSL_EDMA_TX, it should be zero,  FSL_EDMA_TX =3D 0.
> > is it necessary to add it in include/dt-bindings/dma/fsl-edma.h?
>
> I would say yes. For consistency with FSL_EDMA_RX and also for
>
> code readability.
>
> A user doesn't know that 0 means TX.
>
> We could go on and merge this patch as is right now, no problems. And com=
e back later
>
> with a set of cleanup patches that do this for all dtses.

I think it is better to have another patch set to introduce
FSL_EDMA_TX for all dtses.

I will add FSL_EDMA_RX in the next version.

Best regards
shengjiu Wang
>
>

