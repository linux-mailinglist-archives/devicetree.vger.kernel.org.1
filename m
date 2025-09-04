Return-Path: <devicetree+bounces-213095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE35B4495A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 00:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C16F48431B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 22:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34672E8B62;
	Thu,  4 Sep 2025 22:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FanVN3Eh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f226.google.com (mail-yb1-f226.google.com [209.85.219.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE612E6CCF
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757024184; cv=none; b=gYbNgqu78ny3yklWLyPLLttc1jxKpsL5tMfhKqkWtiQlYmjsfu1N4WtBJnDR+EVt64xvkBGbUVI6HjLuUgdJlNI5o0kWKGvJNQ2I7vhE07uQQzPCxW0hmGnqrEyFB0tjJmco7yYH+8pNenoDVQokj2wMNcNeAJuwnX7qhSJF1t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757024184; c=relaxed/simple;
	bh=+ZW26YkUajpJpxvZyQ7i4YKy8mdKix00cWusc9O7HQk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=qvr+RnLv0bbkm18vl0OxpOROSaceu5Dnwtwx+6VbvN2M7nmAGXh/3O9wHXpv7ph7kQ06Y3/LOSU+nkge+fe+/b/YJG4YB+W8rY9Sad82KH31s/gF7cvIgwrtWx2iJAlskbQSD5pCJS8d40IImpaNIMbN7C5YGVyXmkelhLiPHsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FanVN3Eh; arc=none smtp.client-ip=209.85.219.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yb1-f226.google.com with SMTP id 3f1490d57ef6-e951dfcbc5bso1530936276.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 15:16:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757024182; x=1757628982;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XhlHQX9QZI2Wc/319mBhA+FHNIABCp68X6Q8ZJdJwTQ=;
        b=V7CEGx6mYHPq4FMR4Qixjxenub95TdQb6OUlTvn2JqkXXKOAGD4upaTJoAg9WJKGC1
         VVpurQ0FhV/nwzRxUdoyG8mhIDYC84MNTej4+S58T0ran82fBUyUf9TbYu2tvy0PXz6o
         VibjxLFh17OGhSf5w7dPfQUxnsvQ0X+goVGsFLSi/FER+61ehxeFNi16yfdWbU8wVX5Q
         UI7ge+DoH8XaMJ0LYiQknuQYbTu8OJVdei1OuadJl0GAmA00XkIhSHFj0Le1uKuLWG3w
         wIZtPKD8bQ3+LuZJybmmiB21wgGu6aSUC8t+5IIARbRzlqG2jVllgAP5VWEDnyRypWSB
         NmIg==
X-Forwarded-Encrypted: i=1; AJvYcCXu6ngN1VyDWjCxZroLKbJMe8lHiCjDPr1OEgF9eMaabuHBt0uvU//1sB0Xk5rw2rOMHz+uJ1vKH0TR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi5bHzpv08wN25FtgaARoizB8vuneMfUk8tCGOgBxrjvzKpIDS
	7kA6LGwJQPdBAG4z8moakaEXXF5nX9ad86oIWNsepDze1+p90dpFgPMm8AJdPEXjYPMWwF3tj13
	eD8nDy94BTsIwwO/+siyCtvreK1c4gySiMx1AsVvVCkiEBums8D5cDLCFDA6j9HVYOykiSuX4ud
	B6XTGGsKPYatPYlyV6xbe93v9E9lGga2Z53tOIxvFMtLvtqs6xGH/nnuJ5vVXN9id05eNdZpWWQ
	CP5lzHFB0Ee6uaJow9KSw==
X-Gm-Gg: ASbGncuLGxbTGJx/HdS3jqxvGxXrDpJLjDKZiUU2Ep7VUXfD4PAk/Sz7y0Bm9L4B9B8
	WgkvMU7HdOEjxoFYYcpb73H5CWdFpnggk/Of12aaffEi+AI4292iIrUEE5ocbsXt2YTMwM8uG0j
	RXUwxWQSfYSxNn9g67vfjZ3xScnbIQGev+RJu/V8fIaM4mw1vWpltgb3TuzoCISnIs9DIUarEYi
	S5Rd+ofS8jGdj/NUDMv+r2x7EY8sEz1cWcIcJdpwbThRab31qcrrlDjRvBwJ1zSRfP91wPOlPMf
	6Ddd910XkVIdC2bBifKHbrIjq/UDtS4ZGKn99csdxMSCum1lXRxEyDU70YtMZWm0Xf70p+M5hY2
	lOcbO8S3isjqIfvhIEdvC7FmwSqC2
X-Google-Smtp-Source: AGHT+IH/mmzzE1NSYsKeZqy3M8fSV8AfZuMnF5tQHBNPYYdrgqXjQQZtWt9cou/ysQkHoV3BUnEIZq6Z49Zh
X-Received: by 2002:a05:690c:9c07:b0:71f:ab32:1e1 with SMTP id 00721157ae682-7227635d16bmr277981777b3.10.1757024182058;
        Thu, 04 Sep 2025 15:16:22 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com ([144.49.247.127])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-723a8567342sm6704847b3.41.2025.09.04.15.16.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Sep 2025 15:16:22 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e8702f4cf9so227003685a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 15:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1757024181; x=1757628981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=XhlHQX9QZI2Wc/319mBhA+FHNIABCp68X6Q8ZJdJwTQ=;
        b=FanVN3EhwuVCWPv2CsIMhcXELdo8UAVLomqWYZ0oyGNFrbzFUj4BLm85ql97h2q5U3
         YlmJ9A9jlOzpFWufJgkjXjY8FyacJplhbtWMns70nJAq6mtxBFOustP/k+sFvgTxQKDV
         JElpWCkTSRp+INwUHtm87Q5k2ymzNH4dqUAm8=
X-Forwarded-Encrypted: i=1; AJvYcCVnBM75PYiC7T2dg+3hobrTFGYPISKWjTw8tZlOs9LLm4BFzHpYQTE6rotc4f8nh0YmG/zNz4Pi+UK/@vger.kernel.org
X-Received: by 2002:a05:620a:2585:b0:7f2:d9d3:f5da with SMTP id af79cd13be357-7ff284b1c36mr2661081385a.33.1757024181080;
        Thu, 04 Sep 2025 15:16:21 -0700 (PDT)
X-Received: by 2002:a05:620a:2585:b0:7f2:d9d3:f5da with SMTP id af79cd13be357-7ff284b1c36mr2661077685a.33.1757024180578;
        Thu, 04 Sep 2025 15:16:20 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b48f7838edsm34678821cf.39.2025.09.04.15.16.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 15:16:19 -0700 (PDT)
Message-ID: <7e83777f-0912-4ae8-a196-d07fce67385c@broadcom.com>
Date: Thu, 4 Sep 2025 15:16:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH 1/2] arm64: dts: broadcom: delete redundant pcie
 enablement nodes
To: Andrea della Porta <andrea.porta@suse.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>, Herve Codina <herve.codina@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Andrew Lunn
 <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 kernel-list@raspberrypi.com, Matthias Brugger <mbrugger@suse.com>,
 iivanov@suse.de, svarbanov@suse.de
References: <cover.1754914766.git.andrea.porta@suse.com>
 <2865b787d893fd1dcf816e1c96856711754d612d.1754914766.git.andrea.porta@suse.com>
Content-Language: en-US, fr-FR
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <2865b787d893fd1dcf816e1c96856711754d612d.1754914766.git.andrea.porta@suse.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/11/25 07:12, Andrea della Porta wrote:
> The pcie1 and pcie2 override nodes to enable the respective peripherals are
> declared both in bcm2712-rpi-5-b.dts and bcm2712-rpi-5-b-ovl-rp1.dts, which
> makes those declared in the former file redundant.
> 
> Drop those redundant nodes from the board devicetree.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---

Applied to 
https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
-- 
Florian

