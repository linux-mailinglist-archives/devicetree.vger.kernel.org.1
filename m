Return-Path: <devicetree+bounces-182531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10688ACCAED
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 18:04:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE28316D4FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 16:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48A023BF83;
	Tue,  3 Jun 2025 16:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gEN+0yiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215A1231833
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 16:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748966689; cv=none; b=mwIKdwNxIoT6uxt6wNwryRrFUFTBBvaMEt6/n04mZpHkygmX54RlAx/aFnvqP/hYrEsKHfDJLlMIh9xwSRFTkkYUg0LyV+z2xsy2KNv6O3cHYFvOk3PC2G9tYPZmaEypRJep2+MigLHfgFVahC1zsiqeHNb7utLBPanuGLPchAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748966689; c=relaxed/simple;
	bh=r0THOM9Tz5cCxzIN1XwnlflZSYvRYNrRsuYDsh6RLVs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nk65MLtn/tcdiT7CcPSxxdmfpimiM1yVljzVLnfYJcrgTGBX07cQDz4tKGnvD7SEpZHkUfEoJAK6sGOLWn/YzCRu16vjP6H9BELOtS0epvjVVpml/MsN6y+/YUHm0IlLf6pdR31eBMXjW6qfQavYZscMahpOSeFCzeyaVUcpufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gEN+0yiK; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-70f86c9e3e7so56627817b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 09:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748966687; x=1749571487; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r0THOM9Tz5cCxzIN1XwnlflZSYvRYNrRsuYDsh6RLVs=;
        b=gEN+0yiKJcDsB/NzmVm4R0vL6YZ/wmCft7F7hB6+OiX93J5LmTA9vtGQBafiB77le9
         lFDGT5heVFNqvL/GINRZSmPYDqTbJfpz5OXcXERMH6vOxG6/fI2uBrUiINWK/02Zi+Ou
         Zlyjn2/DsxUQcBCAaXgVUyhNVV7B6fIqFurrfTVW/2pUrAr9JR7FOxV55gynE7nS/Bcn
         Z3/XH4/d7erAJ9lIC64GbEmUClCeNCNlKe4+a+NrIZK1HXpGdCwK+KMaWS4u0Pjt15hC
         rfGC6XgOflmlRHACY4SPl3lPx0N9klBgXYquoeh7zdfR4sXonoQSDl3MFbg1g76ZyCNB
         Ca4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748966687; x=1749571487;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r0THOM9Tz5cCxzIN1XwnlflZSYvRYNrRsuYDsh6RLVs=;
        b=UYA50+GLygHLix9iV8AnagE57MDpjrdIRYiL1LEuuhzzEQaixj1dtW1QhTopTW2335
         mM8/i/QjurnL1NQz2Qs11x9j2Dcs8nwLgbos9YKIKFx77HK9qKy7JiUnXmq/AgWCNOOg
         Ok3DR/cgZMBCPSeiDujYpB/j3r1cqo+V45hLb4ZOvO14PeqLj3JS2uAkuUyto2ekkwxG
         3YixxdNiKaILIeyt7JLBAqAgTtL4X/A1TFsk43aULgLeew0H21505h1XiiRNjvb6fNe8
         etlyPgB61Cx4fpodxXHFel06Iu1L+T2F/c/iyQLEpRymiqPq6Eo5GsFqZn44+MUCVbuC
         cjUg==
X-Forwarded-Encrypted: i=1; AJvYcCVmjFMDa9sgNo5K3TG/6NWqAPXmKZ9SAVTvi1D9O+65T55xUpoxKo3NqDXkYhjDsxyvPblWaZovT+57@vger.kernel.org
X-Gm-Message-State: AOJu0YxvuzNr7tQZMqzvWsCABi1eRgpMzdfEWJJyanIUA70aKKxRTsZ0
	WPUscUbVcmiaEvTq/fx1sWKeiDAOO2TeDWujXQly2t+KGCw5diqky1kIpE4Y/HhTYJ2lSzzKBpF
	+qOkUrPWywr8O8seudTzQQ2d6KHk9421ul4u3Y+XcJQ==
X-Gm-Gg: ASbGncv3oRRvVn/tiWEyMuRQ9EgdorNX6r8WSx1/vVXvlSMOprqBZ7jisbfvCUfjwJl
	g+5FIpg02hAoxT740eDg0m7w9B3d59wFoMkxmKJDp7Fd8aawXsrAZ6VQTj7k6JZwCbStVomd3xV
	5kruFJPskj72rubWJzwpIrly2v+lVsPIdx7A==
X-Google-Smtp-Source: AGHT+IGGBjij3QIsy1jCA5j8zhjft+IKrsaACySUg+k62APod+FXdi6qj6xIeTrUNlmOm0U7JH6MVf56Z9FJvtNzNHY=
X-Received: by 2002:a05:690c:3705:b0:70f:83ef:de26 with SMTP id
 00721157ae682-70f97e7a4aemr301883097b3.11.1748966686958; Tue, 03 Jun 2025
 09:04:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250513-gicv5-host-v4-0-b36e9b15a6c3@kernel.org>
 <20250513-gicv5-host-v4-1-b36e9b15a6c3@kernel.org> <aDhWlytLCxONZdF9@lpieralisi>
 <CAFEAcA_3YLMSy+OsSsRayaRciQ1+jjh-dGzEjrh2Wa8BqdmqrA@mail.gmail.com>
 <aD6ouVAXy5qcZtM/@lpieralisi> <CAL_JsqJ5N2ZUBeAes=wexq=EstRSZ5=heF1_6crAw76yZ9uXog@mail.gmail.com>
 <aD8adnQWcII5XO2J@lpieralisi>
In-Reply-To: <aD8adnQWcII5XO2J@lpieralisi>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Tue, 3 Jun 2025 17:04:33 +0100
X-Gm-Features: AX0GCFs3bGWxJOOMb_L3bfbyIBUrkcS_9aOXC3iJXsU9QwpmVE1adonerRAeDig
Message-ID: <CAFEAcA9sdrykbVLntW35fo0MgV2VNXnLUFa4AM=Aw34bOBprYQ@mail.gmail.com>
Subject: Re: [PATCH v4 01/26] dt-bindings: interrupt-controller: Add Arm GICv5
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, andre.przywara@arm.com, 
	Arnd Bergmann <arnd@arndb.de>, Sascha Bischoff <sascha.bischoff@arm.com>, 
	Timothy Hayes <timothy.hayes@arm.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jiri Slaby <jirislaby@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 3 Jun 2025 at 16:53, Lorenzo Pieralisi <lpieralisi@kernel.org> wrote:
> Specifically, for IRS/ITS frames then - what the current schema does is
> correct, namely, it does _not_ spell out whether the IRS/ITS config
> frame is NS/S/Realm/Root interrupt domain, that's information that the
> client implicitly assumes.
>
> Are we OK with this approach ? This would leave open the possibility
> of having a DT per security-state.
>
> If in the DT schema I define eg reg -> "IRS NS config frame" by
> construction the binding can't be used for anything else.
>
> Please let me know if we are in agreement on this matter.

This would break the QEMU virt board -> EL3 guest firmware ->
EL1 Linux flow. We need a binding which lets us optionally
specify "oh by the way here is where the other non-NS frames are".
I don't have a strong view on the specific syntax.

-- PMM

