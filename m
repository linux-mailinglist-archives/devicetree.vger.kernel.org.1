Return-Path: <devicetree+bounces-66892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B268C57CB
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 16:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A1643B20968
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 14:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22C95144D1C;
	Tue, 14 May 2024 14:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VBV+7cb3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B35139589
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 14:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715696476; cv=none; b=Q9GOFrCBSjWM4mnvgWHPVbmPjc9EzwICauqvC5GA7h6XfktLplk6Lep8wV9KwFp5Ok86pMRRR1JubbJ3vWcYWlhRQxzN4vNganY3M58+DKR51wOjbhwpkM8lNoao4oApqA332kitGCCFBronxRJyYW8rC8AkwU23PI/XYgaojTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715696476; c=relaxed/simple;
	bh=mb9prdjWdxs8QhqBtDx5hq9jsiLUMbnbxsK7OW+06fQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ctp1PmKGfRPx4+DbG035SAolNReXqzd5ASVi7uqHF4pah+bPZnwHXAihoLg7ujWU7xw9+Lp3rIcl7WzhzOeMTkDinEvMCyJDad93yxJrOLCin91gS5/sArNHKTpDurDIsiwg1HJ0akYG4Bzxui0LDDMTiL2gc0L+3kA9KkddW40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VBV+7cb3; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1715696473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P7ZgVaL8/eOSNblYzy1jG+2SJhG8I5uOlBOL0tTqS5w=;
	b=VBV+7cb33vZbf0CJBjmvUuTOC6fELtq+Suwk54PpZGd+mGqzes8b0VDNehGM2OvSxfxnWO
	0lODMudg4vghtzmLkYUsAjYFa9PLjsYL90LfMrk7U6ytsAcXlawEjca1f73nnyAPaXM1XC
	IpNN/tPGjeb21kqjLnTb+o0Kub6T3wA=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-556-OU1gTnquOYyJwzBItoVTqA-1; Tue, 14 May 2024 10:21:11 -0400
X-MC-Unique: OU1gTnquOYyJwzBItoVTqA-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6a0b596f858so52342936d6.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 07:21:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715696471; x=1716301271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P7ZgVaL8/eOSNblYzy1jG+2SJhG8I5uOlBOL0tTqS5w=;
        b=HAZG5zHoN+2yqpe3MJZDG1QpuNG9gO1yqBc+bVP0/j1564TZiWsBCegFWTNEvaR0Qn
         fDdJcUUueCy9eHKd5xqo/LTA7D1wEOx9kvNpu+XyijvE0sTlfh9YR7UXjI/sQSlemWx6
         uwdA2Is1g1CFBk1pYrsw/+fj1j2kqbNd4k4XqX0RyGMbgmaDwyLcH0FnPfuVqMLe/VFZ
         3G2kD03Po/mt57OAy/GPtJxVQWehTVV+XSwX1ErPQIvrvsWreWUGEF1+J9bT48MBH7dg
         9Eh/Ijp0isq5TQwJrMDwxI6Pm1nqo5H6mzvfSBxNicAOVFxa2lJcB6REbs0jLlBvn8Js
         IraQ==
X-Forwarded-Encrypted: i=1; AJvYcCXP3C0hJVeSr8p53GXG2++JraV/MXJ7POTq6SL8yKHAKctBbj4cXPSDS89bhTTPGWyblJkibnpijM0u2rWys1DAVB4CI99K2AqPIw==
X-Gm-Message-State: AOJu0Yw8pMTrj9vFCaMNhOUdAKtezy1lyMTKMeC7Hel2b19qHRnvDPa9
	RUreBsCSlquD8/XYZ3Q5aEJDuygS8M9ELQ/tNcBsUgxmXugpMEwKynWww93sKYA97wvXQ0cU++S
	dh6q1zibuNm5PiU6ooLI8fLInosybLitLrQNvBWOoiDkYdAwD82FsmMXeTIg=
X-Received: by 2002:a05:6214:5884:b0:6a0:c950:451f with SMTP id 6a1803df08f44-6a16824d066mr181211616d6.56.1715696471311;
        Tue, 14 May 2024 07:21:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbsVCbj1Cb0QAJjQcQTQzpXOgJEE+UQ7YtcrHN0c+VfPfJITNLkLvCT5i63ZS9WnW1NIp63w==
X-Received: by 2002:a05:6214:5884:b0:6a0:c950:451f with SMTP id 6a1803df08f44-6a16824d066mr181211246d6.56.1715696470833;
        Tue, 14 May 2024 07:21:10 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::33])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6a15f1cccf3sm53820546d6.86.2024.05.14.07.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 07:21:10 -0700 (PDT)
Date: Tue, 14 May 2024 09:21:08 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Sagar Cheluvegowda <quic_scheluve@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, kernel@quicinc.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Mark Ethernet devices on sa8775p as DMA-coherent
Message-ID: <5z22b7vrugyxqj7h25qevyd5aj5tsofqqyxqn7mfy4dl4wk7zw@fipvp44y4kbb>
References: <20240507-mark_ethernet_devices_dma_coherent-v3-0-dbe70d0fa971@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507-mark_ethernet_devices_dma_coherent-v3-0-dbe70d0fa971@quicinc.com>

On Tue, May 07, 2024 at 06:30:59PM GMT, Sagar Cheluvegowda wrote:
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> To: Andrew Halaney <ahalaney@redhat.com>
> To: Vinod Koul <vkoul@kernel.org>
> To: David S. Miller <davem@davemloft.net>
> To: Eric Dumazet <edumazet@google.com>
> To: Jakub Kicinski <kuba@kernel.org>
> To: Paolo Abeni <pabeni@redhat.com>
> To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> Cc: kernel@quicinc.com
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: netdev@vger.kernel.org
> 
> Patch 1 :- This patch marks Ethernet devices on Sa8775p as DMA-coherent
> as both the devices are cache coherent.
> 
> Patch 2 :- Update the schema of qcom,ethqos to allow specifying Ethernet
> devices as "dma-coherent".

I've been keeping my eye on this series, and realized that I should know
better (but don't). How can I tell what tree these should go through?

Just trolling through the list, it seems dt-bindings go through netdev,
whereas dts changes go through the Qualcomm tree.

Is there something in the get_maintainers.pl output that I should be
interpreting differently to understand what patch should target what
maintainer tree?

    halaney@x1gen2nano ~/git/linux-next (git)-[remotes/net/main] % ./scripts/get_maintainer.pl Documentation/devicetree/bindings/net/qcom,ethqos.yaml     :(
    Vinod Koul <vkoul@kernel.org> (maintainer:QUALCOMM ETHQOS ETHERNET DRIVER)
    Bjorn Andersson <andersson@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
    Konrad Dybcio <konrad.dybcio@linaro.org> (maintainer:ARM/QUALCOMM SUPPORT)
    "David S. Miller" <davem@davemloft.net> (maintainer:NETWORKING DRIVERS)
    Eric Dumazet <edumazet@google.com> (maintainer:NETWORKING DRIVERS)
    Jakub Kicinski <kuba@kernel.org> (maintainer:NETWORKING DRIVERS)
    Paolo Abeni <pabeni@redhat.com> (maintainer:NETWORKING DRIVERS)
    Rob Herring <robh@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    Krzysztof Kozlowski <krzk+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    Bhupesh Sharma <bhupesh.sharma@linaro.org> (in file)
    netdev@vger.kernel.org (open list:QUALCOMM ETHQOS ETHERNET DRIVER)
    linux-arm-msm@vger.kernel.org (open list:QUALCOMM ETHQOS ETHERNET DRIVER)
    devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    linux-kernel@vger.kernel.org (open list)

I don't know how to figure out who takes this patch in the end based on
the output above :)

    ahalaney@x1gen2nano ~/git/linux-next (git)-[remotes/net/main] % ./scripts/get_maintainer.pl arch/arm64/boot/dts/qcom/sa8775p.dtsi                 
    Bjorn Andersson <andersson@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
    Konrad Dybcio <konrad.dybcio@linaro.org> (maintainer:ARM/QUALCOMM SUPPORT)
    Rob Herring <robh@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    Krzysztof Kozlowski <krzk+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT)
    devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
    linux-kernel@vger.kernel.org (open list)
    ahalaney@x1gen2nano ~/git/linux-next (git)-[remotes/net/main] %

This one's a little more obviously Qualcomm specific.. but yeah. Sorry
for the obvious question, was talking to Sagar offline and realized I
didn't have a good way to tell him how to figure that out other than dig
through lkml, so just asking directly here!

Thanks,
Andrew


