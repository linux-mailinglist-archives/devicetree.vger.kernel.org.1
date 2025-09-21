Return-Path: <devicetree+bounces-219809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFEB8E5F4
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 23:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18B22189A2FF
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 21:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3995286416;
	Sun, 21 Sep 2025 21:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KIZCIlLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67207284891
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 21:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758488792; cv=none; b=Dx7GHtNIAF+B6gHYMLWv1QO8z27G5k0D0KI412CwKqY6RQsS2lgT/at2PtHHibnCLTn52cGsGgTYKS/DO7ZNuZEZdf2YyMjQYhBE2OHddCmL59iDeMpLmk2kzQ6GpFhvWZYX+sl53pl+kKNVtMiMo0x59UI4Z6uV4tRsJCtLrIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758488792; c=relaxed/simple;
	bh=1dUSsg5D1sQ/n6aucsx7OOyNbAsbZlL33M7HbOlr4DY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QsFyRNLo3wnVEDrFKuwzXsuyVED0SAXZDAYI8PgH2wh5LF255iqsQuhe/7eN53UWq/3OUNg7qo+b/kCp00myP6owa8kZ3n3Bf8+YUaNz+KTwuVLBHzjdG0UzVxbrQkwJEjuqNXy5Nxyl/rjQzGIY1hUc4IsphlLNSXQPwONPlWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KIZCIlLR; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2445826fd9dso44168555ad.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 14:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758488791; x=1759093591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1dUSsg5D1sQ/n6aucsx7OOyNbAsbZlL33M7HbOlr4DY=;
        b=KIZCIlLRK/J5DE7wfc2qMimNHM1lE/jd51LnR9YAFO3ZqetpwjOpYgJqw+VTSSiFqE
         +ZAzHrazliTAWNMpPGgTZGVj7iozbP7rwq6eMKAccmkkxVoc0QovmyVPxI0RUfNSrW8U
         3iJU4IBrD+AszpIiG076Or7uCOkQ5Y9CPEBKFGUpvjR1WBqUN4f2RKPN5/nKxhJtDiqw
         qpbnw7UTzFPTWm9KQg8j4T/3LaNNdPwes9QUSV5ZfH7RHHOQ3Te25+vXxS1EP4tJ6LgR
         fjVdduEdLs/VH0O6L2ku2aRSGIEZIYJbR2uSJEPpwcK8kfmv4Imt/ZEPPvN5z4VcxAV2
         lH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758488791; x=1759093591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1dUSsg5D1sQ/n6aucsx7OOyNbAsbZlL33M7HbOlr4DY=;
        b=hNqpi+Q99CePvr5Dbhtjivb9yE9bg65SMVq05WNJ+NnFRl5sYhUht9mPST4vtV646p
         yLXKKK3cmriysjyqYh/vIPiuMA9yuaFI24TkKULJmQXkkBhaCPZ06EPOOwrU6SEbt64i
         t/4dATKMYPwWauSrK+HmM98AbMLiNXMr4a/DUnVkEZo0NT8pLIvoj+9yfMhkAscy0MoF
         /G3YeoC/0cbuhWf0WhVYNIVIe75kD8o1tA794151jK2U8fCBr14seaJvRdN9meAEfq/t
         0LXcBSeLd3RZpNobE6imNawmUNuBmVddXCYk63951vuhUr+oStH1IIeZj8D0b6cktOMd
         BkwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXeBheBTVdzzCsIikvz1rAEc8Z9cP5ruGRzLPFC2JCTuvW09TpINAHAMXb0fu9dTl+X4QWLFOFQ5m6n@vger.kernel.org
X-Gm-Message-State: AOJu0YxWCrSa9FyUQZUK4Jl6LmL8Ip0222ZCLyvSpiAgDoUTLSwmat5A
	Xvy5AanXGexamQ/W1NICpP69AVT5eT4Osp64WK4uU8gMuVrJ5NoPB8GH
X-Gm-Gg: ASbGnctYJch8b+YsQe7B/ODrnWfk18DegHJE4GwGdXQq09N26SnM7qDrlzbc0t0PTAG
	8gqgJrgSaNw5eyqNxWzcetuoYbS4Y6wX5Ha8fLI03GOlnRWumRlw1rVBGC8eSmZukKXSNWoaoCh
	MzszzYOjPW7njx8vIe7ZNIFh32GhTcezoJhew9A5kuX7yEN8CwbiBnu5ST4WHIUqzzd9tKr5qeu
	oK12FJtZszC+jxehV76ScOKw5dwC1fhT/0cp06qtNvtkmoNdI7BVdOYu79uifO66LURd1qnjfNd
	DkL7R1IHFxb7iYF+5Dn21a3nCoRs1v4e0n4phVwQOCEA98dcCaopXcBj04HVc1NLvgIVzL1fCJP
	S2B+aBCtw/mFbIy7d94QWz/Nx7r/1+PjRg/tsPqMrS1rdmqp//2MQpBAJP6veQt13xW41sNEArP
	Uf
X-Google-Smtp-Source: AGHT+IHZQgmOYDYkwaNRw5Ez0iNg/VNiStfoYUByPz6lPez924U30hCMS1gj1w6xAjrT5JiXzjQYnQ==
X-Received: by 2002:a17:902:e810:b0:272:dee1:c133 with SMTP id d9443c01a7336-272dee1c1afmr68492865ad.22.1758488790660;
        Sun, 21 Sep 2025 14:06:30 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698019665esm112448845ad.62.2025.09.21.14.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 14:06:30 -0700 (PDT)
Message-ID: <84c979f8-2bd9-4d4e-8437-0b4d3d119586@gmail.com>
Date: Sun, 21 Sep 2025 14:06:29 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rk3399-pinephone-pro: Fix voltage
 threshold for volume down key
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-5-e6bcc6ca74ae@gmail.com>
 <addgrqhxanzrjdhb7y7y2qrqu4odpoclbwlswuua4yqinrzh2l@wcdtuquzuqvr>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <addgrqhxanzrjdhb7y7y2qrqu4odpoclbwlswuua4yqinrzh2l@wcdtuquzuqvr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

 > So the correct fix here is to change both button thresholds to:
 >
 >   Volume Down
 >
 >     press-threshold-microvolt = <300000>;
 >
 >   Volume Up
 >
 >     press-threshold-microvolt = <2000>;

Thanks, addressed in v3!

Rudraksha


