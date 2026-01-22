Return-Path: <devicetree+bounces-258367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOuxKYsgcmmPdQAAu9opvQ
	(envelope-from <devicetree+bounces-258367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:05:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1834C67037
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E28EE78C525
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B47A40B6F4;
	Thu, 22 Jan 2026 12:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mkUmpRiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f46.google.com (mail-dl1-f46.google.com [74.125.82.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023A53D410B
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769083452; cv=pass; b=mjEEgDk2yC5lRiSNYi0DkibtPd5rb4Srk8WyW2yP2diMUG04jcVucmJ5sC1MnKr0mIjei9Ml/pjyKU4KWnM2Ndvy+hR2SuNFpPqGmuDWBeY9aU4rGY15clvWfUaFq2Uy3KASh+m3zOB5/SXvafDGLMKJk9jwVi9tjfmgJ0E0K8Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769083452; c=relaxed/simple;
	bh=X3hWCPtAHf66rCoHEjgzZZXz3d7jr9a0ZdE4RDvb9rA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GslQBGaN+QiYILe1mEs17EjYcj5aiP03iz0PT20cN6bHzmobKqjgtFVkL5cHHp55OF7s0fIyqEVlQJSck/r4JFaiuyRan4SvQWuS5yzI1rzEsbeAlWwwvlg1C5xJVgPCPcqIAv8BmoLw5i63eglNx9yJQarUkM5uWjHOYouE/ns=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mkUmpRiO; arc=pass smtp.client-ip=74.125.82.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f46.google.com with SMTP id a92af1059eb24-1233c155a42so1251517c88.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 04:04:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769083449; cv=none;
        d=google.com; s=arc-20240605;
        b=FrsZwWpXnI/q6q1lYUH/e7/h0WnwN/cDjvnIFm6jV97bHdkHA2Ttvn9cPMPQQaQGje
         uQCH44jE/gq3+rmtmB3m6E5gnuZT75Dlr5fg/cQ8wvgGNqtqp8KDLS867c6Xa6nmVI4A
         xaojyoi5bDk8HaUzSqDLG51WWpBBXp3j1YNA5xzJQUPreAEmNTtaUV1DD/hQCUvF2uF0
         xOZ+lEL+MihCawSpcodurMKA19m4Q/VQkbwQOsh/mdfAN3oED1cxA9dXDAeh0R+ffZ1i
         fpUyA0y6qWR7CJWe8bClraHsuzj5NaApTxaS1HPDmZ7LKH7ov5eCe7Yxi6M54vh0BC1V
         x8Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZNBdB7Lhd+f+BWkI5lcufgpivjRwqjcdh4wM3ExInI4=;
        fh=fsLZFt0ff/fIygfBySg4bIQ2n+wn+pMqT3GIET9JdRU=;
        b=YCWL/mbMT1nPbQQjIUjoFzha5rr1CTVDMi175vbzvWAF67kG+Dma8x0XUpwzO31aVD
         Qk2v/cNqodBEQLftSPIrUwujLi4Egcs9/M/VSw3MuNvouf7tbILpUHKXDaWJJGMCnyp+
         U1JCXXGU/c1WLwH+4F3lNzcbcZ2xxFPMtmI2TwZXQGIenNak7S41JgD/SigwLN8lYa1F
         oJCQgETmiNdktwO/l9ADMwRy5yB/Xq+EqqeaoaGKEroa7zf9zl30pm2fn6bcg/h1o09m
         LZWwBQ8VlxI7LwY268lowf+ap0tAaZ2rC4VeG3UJ+bLj2pP+uv24Cx81xcIrwHSEBIWp
         7Quw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769083449; x=1769688249; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZNBdB7Lhd+f+BWkI5lcufgpivjRwqjcdh4wM3ExInI4=;
        b=mkUmpRiOhzVtLjZfgMO8+PTA51efjBa6+3mw3wVEd37Pt65d4OCJA0+IwYLz8+1BZ0
         Na8fVkS3j5qKc8+OqZvuRW95g0g3i/Kf3gLCdCLJcPTSXd2ya3PwGt14oOb33KjPHS8/
         5bhAPT0AOGLjTPPuOXA+6a+cBop6YTgwp++bD8MRuoIE2Ip0YYgK1hMYmT9sJ0l7xF0G
         AdeYekAcRqAaIJbxP3R1tQnK/BC/rKlH19jjA37Xb9skdoxn/jm4JmTHfx77rnkZoI2S
         oH2ufEUaO29AyREv/iQeX5Qebic8UMjXV0mPbjo+zO/881L8oNEyEl+VV4irRT2XIMUy
         ksWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769083449; x=1769688249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZNBdB7Lhd+f+BWkI5lcufgpivjRwqjcdh4wM3ExInI4=;
        b=qA/GbchM1GHuZCJtAYtuQ+effpL7gBW+YP56bDXUf9eR8rlyKNs1MX/0DWD4AX39tf
         raRDLKBjqg/6x2p1jeJ6K4N6g1AhquQkz/Z90V+0lED+CvGuiyCN0g+J2NKTGnmwTUla
         ZKJYKU6v54lusoGMBaGTTZE9qV17qiSUR5TxHdVR3WoZm7BQbeRhhg8oTBgx4357vEvQ
         tglAnUkRDIRFB590DmTu6Vsw4IifzDjoOrgkXn5MUb6gAWqeCcdyixkZdioFTkN64Q+C
         dlzPmTAai6bs+LUuuGpxwh3g9LTCymk/FzwEGMGRkI36mMOxQ2BQ53H6CKhu8L/ZsTDh
         GCVA==
X-Forwarded-Encrypted: i=1; AJvYcCWpqDfNepJJ9pc03hnUpp+iNIOXg78jvm11XHijL86AtP3IZKTFJsvI7OAk0Y34OV3sY9Zo1RPZGHm/@vger.kernel.org
X-Gm-Message-State: AOJu0YxdR3ziRJz2yHLuIVFEjO43FfOOB3gzylTg5VV/tpkCJaG2bfhn
	Pz3fp6MWeiAgbiFjr1aLKHA+I6t3t63Dc6kB3aZhn3jAA7XhQ7f8ksJahdkW/zbv8R9Gv8utVcm
	IUXjww8uz9V1zh6ejxssp9PbhNHOVkms=
X-Gm-Gg: AZuq6aKUHC1maMd9lsVXzvZlxp+5WkkXJdae383t9oBMrNHs99J4aBPf8ogVY/IRUEj
	wOYAlKJXFYXPIxmj/irMlnOM/5ioXTXOjXbMQUtp3/vPPJe6UbZ5VTg/x9ElArnovNPv+sv1YEp
	SwyBDQoPUxZZfqgU7fcT3XH5x9vj0BgPtzQgdh0PN9a/nMOWNNbjtvB6yVBWMkijr8RciSoomMt
	TOCt1XWE4GzvK2zk2GzUF+4gqQzieHz1fHMc/LuA7lhbjK5pEBzhJMzLT6GPOBbzxbCDE6kD3YY
	RexFTwRECJZRZJtrh7HIAH0KgIBGo/FX2GPGzlX0ciGqcpHZjc88r5UZojxeWq07ujLd7JzWPn4
	FI/mEMDspRR8Nbg==
X-Received: by 2002:a05:7022:6986:b0:11b:b3a1:713c with SMTP id
 a92af1059eb24-1246a958283mr5461620c88.9.1769083448808; Thu, 22 Jan 2026
 04:04:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260121-ccm_dts-v3-0-820ce9b5fa38@nxp.com> <20260121-ccm_dts-v3-3-820ce9b5fa38@nxp.com>
In-Reply-To: <20260121-ccm_dts-v3-3-820ce9b5fa38@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 22 Jan 2026 14:06:47 +0200
X-Gm-Features: AZwV_QjimaKd_p8jdtYQifLmLFybP2fWAwRE2czS_YKMQ7pErfdW-RzqTfHjkKk
Message-ID: <CAEnQRZCR3oNgfuknUnm88P2Cc4=CYc+MEd-hPtdceRhGhNR-ag@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] ARM: dts: imx: add required clocks and clock-names
 for ccm
To: Frank Li <Frank.Li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org, 
	imx@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258367-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,baylibre.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,nxp.com:email,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,20c4000:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1834C67037
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 8:22=E2=80=AFPM Frank Li <Frank.Li@nxp.com> wrote:
>
> Add required clocks and clock-names for ccm to fix below CHECK_DTBS
> warnings:
>   arch/arm/boot/dts/nxp/imx/imx6dl-alti6p.dtb: clock-controller@20c4000 (=
fsl,imx6q-ccm): clock-names:0: 'osc' was expected
>         from schema $id: http://devicetree.org/schemas/clock/imx6q-clock.=
yaml#
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

