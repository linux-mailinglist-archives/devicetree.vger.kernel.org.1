Return-Path: <devicetree+bounces-231380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 456FFC0CCB7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:57:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A1E7A4F58AF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997372F3C26;
	Mon, 27 Oct 2025 09:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HlpY9PJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC302F3C23
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761558815; cv=none; b=YBQL7Fcf/gwLj7kIklFrBdFwnlWSY0YfgbEroA6XvWZSsw8lKEv6LmTYsMhoB8VpUPNOs5FzoKNQJ9KmKB+2MFDkzahWFQ5moZM5kRACMDCJhecRE+Xv2e1WaXE+qXpNfULYxi8tjnADaf0zL7goXCKdmii4hvH73jXipJYTfA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761558815; c=relaxed/simple;
	bh=uHZIvBo2w1MTfQAp1MbdkxhqheGGsSeb06hs1bU0eWo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E1G/Ul07PmQpumfnk8mFEcydzEWT52V7eiQQBBdNVDr1CKB4v4fT0/DtxEeAC+sSLOmmELC7f/o1whDaeavsEzIzsJi1s7VRAjDLj8bOAz9W4boklX3l3GdMijv9fYa3qmCrCht2oRejm7GjwGlPnIWCySkZj2mTj9nIE+TSElM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HlpY9PJK; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-26d0fbe238bso31646605ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761558813; x=1762163613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHZIvBo2w1MTfQAp1MbdkxhqheGGsSeb06hs1bU0eWo=;
        b=HlpY9PJKpXoOw9bpQk/Jn2/oQXTaHngwg1iB8FfrSBzs56KS2scu7zIbEtIP0X+N2T
         LoP84Kf2ucYUT9vWrd7iWmm7YbVy6FHam5D3XTq6TUAejwR31yW+tZ6MpG7kNV1vwp/L
         4AwUuV51ozl0qusm4LXIgdHzHGM0V2FpH8mmRblcjFeLNCk5NvLWaigJN/uddS2NpxXs
         0e4X0bFnw5lx9Rvm5xD6WeGPRIoeV39KR2Isidorw8oXMI0L/BgFbGT77Fg14Awu/oH8
         5rdOj/9M3ca434CGgsM4jkd7gIQTGP1T+YnVokilN2RCeoeZefbbva0OVPzsRNIon5VP
         OxoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761558813; x=1762163613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHZIvBo2w1MTfQAp1MbdkxhqheGGsSeb06hs1bU0eWo=;
        b=OXI0qK1AML81E/p7XgcVM4HrCqB+zc5AhfSIXuy/wRjhLvPaAIqRrSG+ZN1GGMeN9j
         6UfiHs4EEUnD6W/a+wvvf56G9VJGmsYfOEju0Al9ameTcHPgfk3LDhl1CdupZoxu68pL
         5CLCowJeX6rV/OYaYYI0GVsG7pzaMJfLnQhTEFOVnicmHT3MdGML9a7qT+S4vEA2wcHg
         hbd3tKWdjWKb5AL75Vguan4UBIvfLioolzrQzvkHJKHllAtvNK0/nv4HJWD06jt3Y09D
         Y6NkKG76r4Wgl2vhdp51q6C8RN7kwSYVv9lAzhMPZIFXM7/4Yyo3Oz2tFJB1VKg5r1sO
         qoag==
X-Forwarded-Encrypted: i=1; AJvYcCXdaYieZlO6Ewn1a0zARDh+vdeSu6kPdM7drTzr6G7zjYQBoCS/l8gAUXH7+xXXK91lezD6JxLiEmG/@vger.kernel.org
X-Gm-Message-State: AOJu0YyF0IvNgHWixxbElp2J9fEFSOiwBATchLj0ihMJqUMV8om2Xgfx
	secA7ys7nJKS1Rs+eCRdlbEEYqSGpXBCxxPKT0ntWpWMcFcgbaTdc43xPHCBQmbMws5i9cUAnMz
	etZmcm2rOfRc+n6LnTCThiX6+BvQpiGk=
X-Gm-Gg: ASbGncu0+iT57AgyvBjocOQ5YnvDDNlXtrUGvnRXBthE9MQK+YsgbrkGwfHAcO461zI
	hEkySf3cIxZlZa/FbENca7NQqBKHNZo03vuIraY3iDzmKM+nRosYtIQCfDcO8aAcs1cfq6tqQsA
	vLSmyf7SYGal+JEBqbS3KUof9wwF5TSU8EGNRzc8SQv2GiyRmZh/7p/H7tMJ5EAEeM/mSksKkIY
	9uqDbikNB2fafhY+eathFvjuuqxzS+LdQeKZ1h6h2LaQpN3TQMl8X7EPMusaWn3jTQAwH3aAiAF
	lUqTdbTkhTyJ3G2+AIbXDY1S61IF1dPiBeo=
X-Google-Smtp-Source: AGHT+IHtoK9BtAWkuBlb8wHMY81e3C7F/tuuKHdZ9dReVXpNyDrBKViu/Dmg9ERnj0atAtepiwCmQJhoe6CLgiAV9x0=
X-Received: by 2002:a17:903:38c8:b0:26e:d0aa:7690 with SMTP id
 d9443c01a7336-2948ba3e147mr140058725ad.41.1761558813104; Mon, 27 Oct 2025
 02:53:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com> <20251017112025.11997-3-laurentiumihalcea111@gmail.com>
In-Reply-To: <20251017112025.11997-3-laurentiumihalcea111@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 27 Oct 2025 11:55:58 +0200
X-Gm-Features: AWmQ_bn8djVWD9T3hbxz5BaFzJdgRNmgPK4MMnk5oMPTdlZh7IbRd6rHqy4Tk8c
Message-ID: <CAEnQRZDXhb=ssjbL-SOWXN74pjqzKgwXQ3SUUaQYMJapRPgKFA@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: clock: document 8ULP's SIM LPAV
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 17, 2025 at 2:22=E2=80=AFPM Laurentiu Mihalcea
<laurentiumihalcea111@gmail.com> wrote:
>
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> Add documentation for i.MX8ULP's SIM LPAV module.
>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

