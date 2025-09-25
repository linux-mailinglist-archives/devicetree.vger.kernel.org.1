Return-Path: <devicetree+bounces-221563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2776FBA10BA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:37:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A9A21BC7364
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 18:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E8C31A07F;
	Thu, 25 Sep 2025 18:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V9y6B6jq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DF431A061
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 18:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758825437; cv=none; b=RiteZVOuKReN9GGh1Ifm8ZRGnA3J5aeSEJiSLKGQNzATriitNsuLqCE1+QbuEJkUWotPuPBso+86Q4jHWl6xA8JB8QrrnTmD4r/kJCcpzj/G/Inm2Ml25nmQF6kjA57tE1cWnll434X3vIgJJFIadOC7D7eXixBy2UrTRK8wxiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758825437; c=relaxed/simple;
	bh=0Q1cTjmZ9Hi0vHDbIbYb1a3iXAlzjO74mKnKxout+90=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AR+ChbG3j2Jo+pEEQ7ICCoGa/PTb5wDVkSlvPfXqUI2VpzIciCzWF64gNPvgC/7foFuEeEVlQLa5setw+7dxycXxXYaVJVbIQoSr58axQ/iRtlooFNiXcm6eaHQb6JHXr/Ctu3x8MTnGIDFV0ZxJcHOTKpGndKXXk6GQ27yU8ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V9y6B6jq; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-77f0efd84abso1209802b3a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 11:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758825435; x=1759430235; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ejaK95uuDfPzMcPS0W0hlWY6j8PK1ad5B7aVSF1ED4s=;
        b=V9y6B6jqC/iT0CaRu+9dT91/aK5IDDWeZ5A7TkgDpekpUrQ/PEM0AJQUjqn1Tr0zgo
         EFa8/MD/PBLiEzEPsw2afoMMZFdhbTa7bvSBu1SzEdsDEYeKJNwn30QPzxKUx4e11cjk
         44Q1ieR9GJam2ZlgPPQnbxNgo0RuL1JNLYyrI5UFWjs7OEZK5QfXqulMDuL77njA0EmT
         U9txg5Hh8OkVxu1fL1QLSmNfrApk94/UqMc0jMbYV7nZ86PsjeLOSMZfW7VUSQY7HFQ0
         jiWq31Dl06pYJT0QSrL9gVLwlXCSO3b6f3Etuxc9ptiPzYE2TYcMWfuYF8bzNO6R73VM
         Ib7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758825435; x=1759430235;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ejaK95uuDfPzMcPS0W0hlWY6j8PK1ad5B7aVSF1ED4s=;
        b=bEspA9+7w52sUbfSsWt759nbkz6SmrjMs1WKeDAf1sA1RBkhQ8gAZ+apFf4Rm0xU7t
         8J3ziMCZg+lu11FUDdoWyTS6G8W2QAjT8lGgvEoej6oc27iSUTfi3Lg2IQbUC/zL6kzj
         W7dIXNL4dv52IqyG//84S7psXTF2N1GErBiOj49/dUL8ROJtFMuPe+qAmceSx56VBT3b
         SCMQzx+RbV46+VIBMG+cOvwl4CPZ+8KkrgS/mAJXhG08t7zfDHDXcYDuCuc6H4uMaPNS
         ooUQT4t8E1SbwfhHP7Q2pDJk0Q5kegOjNXQxCVrk/0XkHD4IoyA2xOhaPpg+GJeucixJ
         1HEg==
X-Forwarded-Encrypted: i=1; AJvYcCV/EekqXclG6OL9Vyq9JvM3b4Kt4elNH5ixmbEtdEfHV2Nt07rke2Gsb0TCSYHqsKNNMn0JK47rWfdp@vger.kernel.org
X-Gm-Message-State: AOJu0YxuZZ7orkCXPtX6gihZPn55RThTLey4YSreJCOqsfningO/SL+j
	mgnHln464bmKjrLtz3TS3x8BcxYEjNvUvlCw6nzSYZvLUQpfv8xE5Ip6
X-Gm-Gg: ASbGnct/uswsQqvFTmYZ4zUdRbzLHsrBmKP41AIKxrx2BIFryBKtuTxZ/fWOzzNP4JM
	IDalNawdwaJS6zdJPxY78PE52nlLTSdZL+pDUT+ArS5FFl1ZknjOi6rRQk1eOC5J1Y91WUB1i83
	YRLdWLQhNPFjJJWTng4SJQwYeu+z+dTBKRqiYRSZHrzxBQxKiucqSNwkeejOrR5+yf99PcvAXeV
	zfr1+hCtGtDmAvdA7HeumKJ1KVeWhQPYGCqpQCBD2aZEIZZZZfxv15Kr4AqzN2s/bw0tOI5ec3o
	Z/1eW+2/Hor9ezI5QAhYDSxDLn3LAJ+1ZOrtSmN65/OtwvDLvMZl/yH3QNzBbmNwVbQo/0KhXQg
	SNNxEGnAC7Aicat11QLjKTw==
X-Google-Smtp-Source: AGHT+IFQ9L/9odSQ7gc7JHhUpQDD9t7I9o/+eSPX3b49TgfFSepGgPL/WvhMnEIO2E2EA+RGSnCEpQ==
X-Received: by 2002:a17:90b:4a42:b0:32b:dfdb:b27f with SMTP id 98e67ed59e1d1-3342a2bede7mr5384154a91.17.1758825435565;
        Thu, 25 Sep 2025 11:37:15 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:5a97:14cb:a5e:6c78])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be383b4sm6480831a91.27.2025.09.25.11.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 11:37:15 -0700 (PDT)
Date: Thu, 25 Sep 2025 11:37:12 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, 
	linux-amarula@amarulasolutions.com, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [linux-next PATCH v8 1/3] dt-bindings: touchscreen: convert eeti
 bindings to json schema
Message-ID: <knegehuffheb3sxbo2vu567wnv4htomsvkqnw7b7skwtiru5tw@7rwf6vrwrppx>
References: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925153144.4082786-1-dario.binacchi@amarulasolutions.com>

On Thu, Sep 25, 2025 at 05:31:33PM +0200, Dario Binacchi wrote:
> Convert EETI touchscreen controller device tree binding to json-schema.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Applied the lot, thank you.

-- 
Dmitry

