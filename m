Return-Path: <devicetree+bounces-23045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1925C80A110
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 11:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6CDA2818EE
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 10:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9FC1944B;
	Fri,  8 Dec 2023 10:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xh8FPfmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BCD93251
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 02:32:34 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1d053c45897so17083695ad.2
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 02:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702031554; x=1702636354; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YssbbUCPI2cVXvHWriFdE5fhn9Moo9Wlhv3uqYqJSwE=;
        b=Xh8FPfmrGihDVbvCvqyvLIEkN/nTMwBQbdeBdYzU6vcwaJYth2GHEjduYC1ySt8vFp
         KhLx1gU+NX7qe7OTGUAO7m+ZsqHuI1zF28JyT+tv23Y7TZbrWMXyfy8StfuyDu29OeOf
         M6pL/jecgFuW0/zeUsRwWSPSMJNd7YmmeLvdXJoNXYkw3nvbZBr/K4yV0F3QUaU1/pe7
         2UY7Q433JtjjUM11QY7TVR4aKSb8oqopK9yqGfpDtF5YDvT5TzG0EdvCRgVU7IEfHLZx
         yMe+ybv/6sCQUeq0OCayMubJCxCdWm4JQ9xSwvvNipPnUF4RsXctGL5sqYHN3g74ZYUV
         NrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702031554; x=1702636354;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YssbbUCPI2cVXvHWriFdE5fhn9Moo9Wlhv3uqYqJSwE=;
        b=lgldCCciX+uWmyaXQ6y0dXjz+acwFib5qZUaet8NCP0cw/R8nzUc8kokOpkupcjMfp
         rK8R9VTSfZD8zN0fYZRxEdEBxJNh1O3NhLrSdG/7QA1P5t1cZq3ZJNX8cMz5UpXQGgTT
         u9zK+qMfJAx/R4MSm5NUjzgm7HNRal5KAKM+Cpxw0sfexb7KooowOiPGJkDlLd/6X44i
         w8Zpi+yXgQBpOrTjQZuNMJ0VnESEOMLV7JWhUPqv6Y3WB0BKoRIf5LqRtAG5PFP1xb07
         o8/J8PZvlrlmfD4zH0/TQ8kLAV2fXvNnurfqJ5d8Mqst2P5XvGCmAsfB8nZn4iZV9/m5
         lxqA==
X-Gm-Message-State: AOJu0Yx+uHz4/OwGkcDA+USHFQBIfGbAhLeISJmCH4T0mGpLVB4rS9yL
	s7VJvoYR1OlCnSOl0pQwpMxI
X-Google-Smtp-Source: AGHT+IGNfp9Ep6LAjKWWdk4BU7zk1Hj3bGaTZHBgdMaZGRdi4WR6/bUXwRY+x/gs7QUpuEH3SEgcTQ==
X-Received: by 2002:a17:903:244e:b0:1cc:53d1:10b8 with SMTP id l14-20020a170903244e00b001cc53d110b8mr4898083pls.50.1702031553834;
        Fri, 08 Dec 2023 02:32:33 -0800 (PST)
Received: from thinkpad ([117.216.123.142])
        by smtp.gmail.com with ESMTPSA id c21-20020a170902b69500b001d1d1ef8be6sm1347559pls.267.2023.12.08.02.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 02:32:33 -0800 (PST)
Date: Fri, 8 Dec 2023 16:02:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
	Rocky Liao <quic_rjliao@quicinc.com>, Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [RESEND PATCH v2 0/3] Bluetooth: power-on QCA6390 correctly
Message-ID: <20231208103222.GB3008@thinkpad>
References: <20231208090936.27769-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231208090936.27769-1-brgl@bgdev.pl>

On Fri, Dec 08, 2023 at 10:09:33AM +0100, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Resending with all maintainers in CC.
> 
> Patch 1 is just a typo fix as we're already touching this bindings. The
> second patch adds more regulator definitions and enforces them for the
> QCA6390 model. The final patch enables the power sequence for the BT
> module of QCA6390 in the hci_qca driver.
> 

Is bluetooth fully functional without handling WLAN specific resources like
regulators, enable GPIO? When I checked last time, the chip requires both
Bluetooth and WLAN resources to become fully operational.

- Mani

> v1 -> v2:
> - squashed the two bluetooth patches into one
> - changed the naming convention for the RFA regulators to follow the
>   existing ones
> - added dt-bindings patches
> 
> Bartosz Golaszewski (3):
>   dt-bindings: net: bluetooth: qualcomm: fix a typo
>   dt-bindings: net: bluetooth: qualcomm: add regulators for QCA6390
>   Bluetooth: qca: run the power-on/off sequence for QCA6390 too
> 
>  .../net/bluetooth/qualcomm-bluetooth.yaml     | 26 ++++++++++++++++++-
>  drivers/bluetooth/hci_qca.c                   | 14 +++++++++-
>  2 files changed, 38 insertions(+), 2 deletions(-)
> 
> -- 
> 2.40.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

