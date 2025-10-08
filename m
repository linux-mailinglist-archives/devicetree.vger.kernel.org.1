Return-Path: <devicetree+bounces-224606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E393FBC62D8
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 19:50:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A65874E4AD7
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 17:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 391AC2BD029;
	Wed,  8 Oct 2025 17:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="MLV+20+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ABC26A0C7
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 17:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759945841; cv=none; b=tNEyXM89Thg+rh+8BVD52zwYDO245zo6vNGa1PBZ1+Pbd5HD2JUTA4qDiNNDvKoOh8drLIAn+L76J1oHtGp3FzVmCYwpIaYtPBTF+4ef1R+3/3bNY1pEBs+Zx0flBj7BJnR2GUNwzjXQ+u7ayGEIyQtcgFADPLightRJKwns7zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759945841; c=relaxed/simple;
	bh=ta1HA85w2K/o1HGvXWAM9+/IhcjZhzmQno4Y2Uxu/Gg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kXcPwaevlDkpBuPeDNCxHOA99OTXIL3vVWD9aH2g6USzRugAzNFqRADsiaHOYJ8vRkURKoL+hJB6dKeawVusyapp5wNC9vOFNJGUIhc+Fpt/zkwn407pH/L0a6RU8Zy97KfAMgS2rwsCizw+NeqEXs3vmwvwLZFaH1VD8rZCYgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=MLV+20+w; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-46f53f88e0bso905705e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1759945837; x=1760550637; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ta1HA85w2K/o1HGvXWAM9+/IhcjZhzmQno4Y2Uxu/Gg=;
        b=MLV+20+wQK6sMjDxdW53fsuiTfNUT9xKAJXaNocb3mho8jxnMxEKGspuOxu0K/GkmJ
         d6se/RXBq3Ailv8trIIqCRBaTE7SpBLJXyehf2BJ0fwfu+7NT6LRwAFl4T4ysc/tV5Cl
         4Fc2AAICKmmg93K87zbsfWeDQQ6nG1BjFzod3mo26Hby76K+lRQfFoFBSkONPjHWjq//
         qnhqEXHEFMV3lafCMpmCm21KXtplkCM6hQDrjlDifAyq5YLffaHGrXIYoNAVHlg8fizj
         wpQKRqI7cJYW+jtkNbRlqbrhhXLwZF1EYaLYuJ8dKtupO88OT/6vCElk8hxRaQ2rxpDR
         SkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759945837; x=1760550637;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ta1HA85w2K/o1HGvXWAM9+/IhcjZhzmQno4Y2Uxu/Gg=;
        b=HInXqX+fvCh84Dwj6/pxYKEirYnXtVoQViiRFWkNSYlvnSApP0CtfHWy36beHBjf84
         BzZKVAHAaxBljMDDdfwIAI+cnznKgn4nUmlo6CIfOxDxDBzQvA2c3SyA0v4Dlj6DRX3V
         BcwpGN71DM0Xm30Dd/YKlp2bm9VpLLSkpCfV4lbX+rf/f48x7hqeuijx3YaxQAM3duHo
         EiCd6NFAfb3oZqKyIyoHjcYRuxjXx32pGY7qemlV+/jFulzLRB13WaQo/jc5Ikm0RIq0
         gKY+5fUHKdFNXKs5+M/2VKHHrYKsGKiMK8M3dJvREryI1LF6roGaPLub2OaJrcMsWrze
         ldXg==
X-Forwarded-Encrypted: i=1; AJvYcCVzCboUAIp3aAS62CmnQ78h+/Akh2ZffVuvoFODNGBJPB+WB7fkNnIlFIKDwgs9vh8bJn45El0KslY9@vger.kernel.org
X-Gm-Message-State: AOJu0YzaTQev6SSVGAqgE4pvbAkp9K2VMIaCt5VsfFfOFHlUktWkxLCT
	E0g73iC0FTLycvaOQWmv6d1pFJRpcqEsNE1udPRqfruEBRxUXzdlYBQgeamzQUIFaHo=
X-Gm-Gg: ASbGnctv7h/j6TQ8Ge/TcIbUQ4THO3h1JMUQxtOogl126odoRHNTlvjeXBts2PQb0Lc
	XTp5UVlCxweOVsUy0iEwQYdH7jrtZc5siH3KpAzD7GKiCqRms7ZJxdW9sU5BTS22H7ye46meDvy
	RLufMXFEbf5y3l5icqO0C2UTA16iJ+MRHbiiFUF2N2DSiSWXPVZZ1o1LW+uS+WaOyl9h2TtMqOj
	0FKT2boDW3wojkBIEKfRyBQ2qGVXIj0aqTLWEMnT4MMEHWxz4HX70IV32x98sgypMPJ+lAC1UxU
	sCGSXTFM3N4xX8dPTfkx3uIl0IOfwNj+YilcJQN5kDg3QqHM0RzEElvAvh07BfDSfex16U63Xrv
	ihWmsNpr/MbaN/m++r/gP93eS8P+7zRw3xWUzLFeJuXtMBZIKerOULlwPjbrm1zPmQA==
X-Google-Smtp-Source: AGHT+IESXSVxrF30Y1nc15WrKsGt0IGzfLOtD1UjZNMDB6QG0IIRSF7dJN0kGxrQHbIW3QPqLup/3g==
X-Received: by 2002:a05:600c:1d18:b0:45f:2869:c3b2 with SMTP id 5b1f17b1804b1-46fa9b1834dmr31842995e9.33.1759945837418;
        Wed, 08 Oct 2025 10:50:37 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:34ff:86e3:b660:6d50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e9703sm31304812f8f.30.2025.10.08.10.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 10:50:37 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: conor@kernel.org
Cc: asmirnou@pinefeat.co.uk,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	jacopo.mondi@ideasonboard.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Wed,  8 Oct 2025 18:50:36 +0100
Message-Id: <20251008175036.8314-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007-obscure-thrower-1afcdb23c4b8@spud>
References: <20251007-obscure-thrower-1afcdb23c4b8@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 7 Oct 2025 21:47:29 +0100, Conor Dooley wrote:

> I acked v5, any reason for not applying it?
> https://lore.kernel.org/all/20251007-geologic-epidemic-2f667f232cf6@spud/#t

Yes, the dt-bindings patch can be applied.
The v6 series does not change anything in the dt-bindings patch - only
another patch in the series was updated, so v6 was sent.

Apologies - I wasn't aware that an acked patch could be omitted from
the new revision.

