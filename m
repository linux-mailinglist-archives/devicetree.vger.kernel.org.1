Return-Path: <devicetree+bounces-252608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE90D015A4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 08:11:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18DDE300726E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 07:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24FDC329E4F;
	Thu,  8 Jan 2026 07:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SkW91Q6o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA8A313264
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767856142; cv=none; b=nqSGsbdCXWKxx4VrLI4A4mYEtLYyg77feSAEDAJ8TJwaG8Iv6KlMZo+jK9troxABXQXkqvi7I+loZkXlqCQ0IRs0Yz4biN/pXmlfAw0iVFPzaGbX2ERqJMVN8a/MwfAN1lWhzxUlc622FUTNf0yjJvQuXgQPaZLn/CHUA2fdJiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767856142; c=relaxed/simple;
	bh=QtBmZt6mefLBB29zYtfTxmMzVNAjncXXGV3XaqKxAUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CZTiD8Uy1fYNHXQ3ejd1BLMZ2IjI4S2kOb3XrFD4+x9Ca1bA06RM2syhpCM7w71aHWEDOoiwwf8EJMgLO/Lh3gMjStJcP7MCWw5AnYlBZK7qfR58k2qKlRcYS4VCmOgTzPCfPcVN5MASqwLiUV+EcoWETdDUzvUWIZCt/flBPCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SkW91Q6o; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so4483656a12.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767856139; x=1768460939; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=thTQB76dgPyskB7sNYUZqWzvYQMMFkWo0xe6mJSSPOo=;
        b=SkW91Q6op2P918bHOJRTdKYVa0FOfH2R7vJ0b7KDD3W3BItPUpAhG/Wd6m2mh6R9ca
         6uApMZ7PGnT3aRs4NcisoEzqO1NPzWEcWph/H/9Ef9WDllxFcOReCApqPMJBLpi+icS0
         iX02NT9OFMj6OKlXrnlAm3cXplFwq8DlpKKFR8P0W0r4Jbb8nbIJWdieigB0pNL/tBFP
         Y7NDU4jV6T8EQfW74qe8iT9oa2MtRye0h+/D6EhHnIAhu/YJYil+9E2sJ4CAPmS8jcWt
         FeFBrwOcJrzn3jJM4XjSEcFJqP8nbWMCG0DOOmYlXwSvDdf2yVM5HTq8XYclwS0mQ5Jc
         ozww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767856139; x=1768460939;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thTQB76dgPyskB7sNYUZqWzvYQMMFkWo0xe6mJSSPOo=;
        b=n0NVIKHOwJgqubArEm4ir54xL8XJiTuCvjk3vIDm4EN/NTU2ctQBrgZTv0Ug8wPJuA
         pouTHe8cGLyFUi/to2o4fqh22FhYNffilSt0nLKG8bsDrTfAeKyJHXEw166KSqwLlm6D
         OcQhuuIEVVANIWXcdgve2j6vEUGKXWjqYJIffH8kWKJkGLJQ2Wr0XhhMmtdx2iNLBEWT
         ZxQWjDe2xDWq8gHrk1KXnZxYJyuXg+mGjObRMMABs5VMi2gcUDlGpOTMy1+O0fOAlAKK
         ceFkGx7iXsxp+X3VqbuWVKz7qv4lRCNmuv/Q27lVrbUG+6wlkzLgPQUwkmwXQrzzsbe9
         +kow==
X-Forwarded-Encrypted: i=1; AJvYcCUOxfGzjH+4gTxk/t8ZUIV9S5ANcKiJXjRaFOkdQOHXmhyy5IiejbEa6j7D6CrBa3lJREFO2tXw8LSc@vger.kernel.org
X-Gm-Message-State: AOJu0YxHPTA8Bl1B0lFxvdpYoGA5+5PxvlQcY69gcaBcrHCtEHjt5DqE
	rKG/2IjhC7Q+Z7EU03qYHVS3XTXklTnwURJwt/8kwgB86PbnMtsR7ETz+T1RruQOWKeSVk5LeoV
	b7SqCkXhNqMeQrPowDGANPBE0vWvEbMQ=
X-Gm-Gg: AY/fxX4y3t8hgBusP2LT/Zc8BR+e8cCqUL0Fl61cRMsiPdBxEH653zLem9skCPyrkIu
	8h4NvfN37eLFQuAxPhWzb/ERaXQdwNGFlYU92W+Ratp6GIJkdy04Rp2AJLlueOGqfVXTODiTdUG
	TuK8bGCwSqg7cFVEjHFXWZHOJuIbkrPH/n0emG9+d+mf43G0KK2nZYP2yQpHfoKxdWzLhOqrfLZ
	3ObiPx3BVMtpnDN7Wdq7eEaZKdi9GohdzUEtTedoAbkNAvELTtd6iC8W5kDpbFVhjE=
X-Google-Smtp-Source: AGHT+IFmXcT/RJ6HZubhWjedng+hHTPSueTKrHqpeVlNJ+ZGzEvFI4lHW+npR1I0poqnrowNdGccMsb7LKtXr6O/0Es=
X-Received: by 2002:a05:6402:1e90:b0:64b:bb79:96bb with SMTP id
 4fb4d7f45d1cf-65097e6c1c6mr4178545a12.24.1767856138583; Wed, 07 Jan 2026
 23:08:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215141603.6749-1-linux.amoon@gmail.com> <20251215141603.6749-2-linux.amoon@gmail.com>
 <3cd7943c-4d35-4ec9-8826-c20a5d213626@kernel.org> <CANAwSgR7UPrPSHB9RL5newKgWksyn4MoP03ykRQcP2eRSK2SXg@mail.gmail.com>
 <f0344520-3234-4285-b971-f8cd9955ba90@nvidia.com>
In-Reply-To: <f0344520-3234-4285-b971-f8cd9955ba90@nvidia.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:38:40 +0530
X-Gm-Features: AQt7F2oHeG785F7Uu0lJ2eS0VjzE4iO4B-6pef7igv9JbvhMFoJQu85PknHRyfo
Message-ID: <CANAwSgQbvN4g6Z4RRTzXbfy-nf+Wiq1Hv5NAoJiR1BqBAT--Lw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: PCI: Convert nvidia,tegra-pcie to DT schema
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	"open list:PCI SUBSYSTEM" <linux-pci@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	Mikko Perttunen <mperttunen@nvidia.com>
Content-Type: text/plain; charset="UTF-8"

Hi Jon,

Thanks for your review comments.

On Fri, 2 Jan 2026 at 23:55, Jon Hunter <jonathanh@nvidia.com> wrote:
>
>
> On 24/12/2025 12:41, Anand Moon wrote:
> > Hi Krzysztof,
> >
> > Thanks for your review comments.
> > On Tue, 16 Dec 2025 at 11:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On 15/12/2025 15:15, Anand Moon wrote:
> >>> Convert the existing text-based DT bindings documentation for the
> >>> NVIDIA Tegra PCIe host controller to a DT schema format.
> >>
> >> You dropped several properties from the original schema without
> >> explanation. That's a no-go. I don't see any reason of doing that, but
> >> if you find such reason you must clearly document any change done to the
> >> binding with reasoning.
> >>
> > Well, I have tried to address the review comments from Rob
> > [1] https://lkml.org/lkml/2025/9/26/704
> >
> > Actually  /schemas/pci/pci-pci-bridge.yaml# covers most of the PCIe binding
> > So I had not included them, as it would duplicate
>
> FWICT you are missing all the Tegra specific power supplies and so those
> will not be found in the above file. I have not checked if you are
> missing others too.
>
I will include this update in the next version.
Please review the pending driver changes..
> Jon
>
Thanks
-Anand

