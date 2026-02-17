Return-Path: <devicetree+bounces-266264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SM+WFam6lGmKHQIAu9opvQ
	(envelope-from <devicetree+bounces-266264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:59:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5347314F6B7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCC19302AD05
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6969D37419C;
	Tue, 17 Feb 2026 18:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mTPwfZS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C369D23EAB3
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771354788; cv=pass; b=ieWijRROytgukeZySTNrg61dYvdKIGgm3pg9xxKUjOGi0YBv3UoyYX/D9sc/skSWeGTmLu4fmSYcjfKzkdze9lrJ0AeBQl8nrYBojsOG7Q/gmOv4Oyi4BvaLt3bH1gALZQFjRWjc3cjQ1ILvm4FLzgCo1dZxQop1A2Tb9qTdFfY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771354788; c=relaxed/simple;
	bh=fZT+8vawoPT8uZ2wOTC8GV0ryB6Ko27GMVz05oIEvQo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IxaEP3rFis+Nf1jvWv3CmQSJMaV3Jn/fuSANG56jr3QmCQka/Dj/ar+TG3WQVBPzatfnYZkrhQnA7v2Uyk/8Z51bOmvSWlHaGkYus3DrtD4sOmVfYmV5CqGDysZF6NIsK8jLs0b88DTCIqhYSTedPAyPor79TtI6tX4NyjbP/1M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mTPwfZS2; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59e61e94e1bso4911709e87.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:59:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771354785; cv=none;
        d=google.com; s=arc-20240605;
        b=XGf4Az6ZMkrMs1P78Z/MgB8CQ6HbRmnap/t7txj0vYQEJIJmbi2Wzb1X3Kv7QrZGWs
         f+fckLFmgxppC/f1aM9pwzWeMbxTBpHT0IHk9hWWo3r4vuCOHpiLNv5X0Jnb6R7T/Qod
         99Yv0csHB8SUty+g7VxWkfrXQ9x1PS3GZ6MPFKqgpW0imEMUxdynhSU6WuzSZFSA2OSQ
         Hlu6mfCQ+tirWWqByzug2W+Cd+Dzeyysb57ftQTxvEt7l2NHr0AuL0n/747d0MIlYidF
         xMF96PXnZBxQMcvTxhQ16gmn7UlAvpLLlmnRw8f0DILxOsUIcmquv6nENgsg5B0YQUlw
         aBoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mf3CG8FpBVExOnebLE9bo9sjz6BKKY0o99u+hV5WSwI=;
        fh=5cDsH3leHA/p23WEA8qnVlGHOLxYUmMJosxPP+pK7G8=;
        b=fDbfF3N3E0dVdjito7AiiQ+cEP+Ax+U46BvsrnF9FLY2+Ck89pu3zYnjps7ewNRzNI
         eL0oCwIzqP0AvCUAqVuHDkECHnhEa4CZCa/OAbAHsfQUsQE1G7dbZRucgkSS2PbNVoc7
         an+XxMKyEN8QXOn+MLPTml/1hY70qgBPLx/OUyGEJN4/MegJ+KjAst5n3aGk3nvWGjSD
         RMSD7I6Hx8487V//KP9o8D8Wm1b0UEs5HpNNBSYndRvIlGKSdmhY8RecMRBjEF3CVAHT
         4pxR7I6vSfX91V0mHMj9apJG9vwO+xcmN0pvpo0eEGzdjf9pSeoCh4rZ0WRwrnWS+qn6
         bfag==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771354785; x=1771959585; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mf3CG8FpBVExOnebLE9bo9sjz6BKKY0o99u+hV5WSwI=;
        b=mTPwfZS2CiteN1mMfN8CWYIwmOnVw6mJraPZstgTL1aG8xhKUlSq6JFHTo1CQzo+X3
         G2X2jCNz2X8miumafnou5bYWlTyu5QyxxkOHecj4LrdCLF62gFOSWZ6jkH/kL02VxPN+
         C8Xhg8Z6yFjASUy03mmolP2xAeT0IR/Y+MlDQWkDMVA1KYoqsuZoYN+sTcJ2mihS/01a
         bXUiCuUZrYAaYXU0pfwYtqOZ26wjeNjijFSVkuojdrUit1SGiTbqfYihg4OwlfKwclwd
         dS68vIN7NahV6llckow3mfZWk/vV5Mpw6mgAnFguCGr/rjJtJa+m70ZzhO6N6LpGIqaC
         ONXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771354785; x=1771959585;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mf3CG8FpBVExOnebLE9bo9sjz6BKKY0o99u+hV5WSwI=;
        b=VmW8epE1dA+PjNqgUHQTpRM3i/ZRJiK9QnJ9REDsNzOKuW4Ad75WVH04zVx9YlllLx
         IgxN7jVBWqb0OIf4iiDpsZ/nRSnpNUjnHNqB9bhlzUrBt81RT0HEzWc0OPsKNTqT/acI
         SB+Rtd8xPV6h0yAjYn3iPYHONkWK/bYi9j/sfd4u4it5o3mv9W0oIXw6/BOTJ8ke05Lg
         16fbEOInbQQkDZ4LxZ720dNI79GK4+AWHNolQdN2PwUtvupSNmhuVSCa6egbXbKeo876
         rpBJB0TBJ8NmvUk6uFaWliC8f+eXacDln5Rsglw7LQ7Q/p/xoW5ORJ0Na0t89RPrMOFH
         bYYA==
X-Forwarded-Encrypted: i=1; AJvYcCUjOMt0MDUkCTQ8wTiBTivMbHBKNFsP6BOJYLW4/uHq/G+Ye4q/H7y89nDvbmjC4bK9jHZZL7Y1WzcD@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2xrZ7pkHF6ovuz+dwbt8lkFAzBkXdn/onh02/d8rgDFPlIqoY
	CQujMElVzWRH08scxc93jbygWil3J5xzWIdqKIwH3f6DfzbBjgB2JJZN3HIv468CI00oIN/gzl0
	P2MSat8w57+GciTerbjTcvlQpg8phTNE=
X-Gm-Gg: AZuq6aJgAjzS/HXJu1X5BKB5iMYFOplsLQSo/sUV9XBIp3IhtJEXQtlheyNCOhjQz+P
	NmVg8JkwYyAX2k9PVYLJkze7Z0Zb/iHI/KM2fsl9BkqDNKxwUIxDryzQGl/Pr5JDd6UAIx7Igj/
	CgCHFn6Z31AqbVFkewRJifKh6jeVFYO2Ncz2n45dFg0cGdzZnDlWWTdcZLRskiLKWrjizsQKhGX
	jwMmRBd+nw2X73PmVNdAfi4KFkOChiJVF5c1iOMDT6Rz7MrkQujAG2nSzow2cVOeZb0s8RBs7Ku
	vqWCKO9lsXSeGOsSSCK7VSoN88geOWhMjYq0H/IbH42XLaobLQOn5YaGKwunyIVfjPcMcr4=
X-Received: by 2002:a05:6512:31c1:b0:59e:478:6423 with SMTP id
 2adb3069b0e04-59ef97ff31emr4493222e87.21.1771354784796; Tue, 17 Feb 2026
 10:59:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771353301.git.stefano.r@variscite.com> <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
In-Reply-To: <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Feb 2026 15:59:33 -0300
X-Gm-Features: AaiRm52kMzrAsjUxh-2JQc8fxA8DgYgxlgW7re9ZloT7Pc8JEqOscwExFoMYpIE
Message-ID: <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
Subject: Re: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT configuration
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266264-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,variscite.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5347314F6B7
X-Rspamd-Action: no action

Hi Stefano,

On Tue, Feb 17, 2026 at 3:43=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:
>
> From: Stefano Radaelli <stefano.r@variscite.com>
>
> Update the WiFi and Bluetooth configuration on the i.MX8MM VAR-SOM
> to match the latest SOM hardware revision.
>
> The SOM now integrates an NXP IW61x wireless module. WiFi is connected
> via SDIO and Bluetooth via UART.
>
> This patch:
> - Adds an mmc-pwrseq node to handle module reset and power sequencing.
> - Updates the USDHC1 node to use the new power sequence and required
>   pinctrl configuration.
> - Adds the Bluetooth child node under UART2.
> - Removes the legacy Broadcom WiFi device node.

What about users who still have boards with the Broadcom Wi-Fi chip?

Will Wifi on the old boards stop working?

