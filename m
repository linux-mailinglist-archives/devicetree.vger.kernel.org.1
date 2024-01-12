Return-Path: <devicetree+bounces-31565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D850C82BD4E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 10:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70F9E281D04
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 09:33:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED16056B67;
	Fri, 12 Jan 2024 09:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iNjsALAh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FFC55799
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 09:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40b5155e154so79707885e9.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 01:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705051985; x=1705656785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QIRVsOrNS9u8UIkgZdycNtHP1B/M8TKEmYcprHzxnoU=;
        b=iNjsALAhhESnMO2PeetuGOCyu5ONowO8ErHiLoaq4LIdAzYZtiaBq/hVoAEQnA8FrW
         Sao+HGG7z8C10Axg7A502bFBhzEx6v4TB8auHfCeztBt1GhhhsNmlOVhdos+nXq+Wdxj
         OHml14M6v6aDv5yaSZg+YkIltBQsJdObcWhreRFZZMp9hbBlw+Ix/H5FRphBTrnvtv+N
         kiVyLg7P/EtAS9LeV0ITs5KUAOxMkzf+R17l50W1H4FhN54kaVn+g8kKLqulVzMLKuUA
         fwSfywVMPrwzw5TO8Sio+W8lXU2Fhd3EiBDJOxCuD6Oj9I4HcOK52LoeToW+oA4w8nTt
         +AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705051985; x=1705656785;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QIRVsOrNS9u8UIkgZdycNtHP1B/M8TKEmYcprHzxnoU=;
        b=tvV87CyYDOv8da1y4XWn/czpjqenkaKekJBnwhuUy+Gk75x2xx6c0bL0t00YIv+Tzy
         elyRALO6q0x4xT0+VSExpUxqdaa67yC173sp6a+1d0HZdRtBsGv7Jws75EM0RI+wv4dI
         qDGqZJ3KAVyK3Xh/2i7qOzVzIjOe32PE3JflMooq9E4fnN97DUUrL6RD+EqK8Zn/JOcN
         hoKT7VmWImnW69SdNJxfBvgQTOmqZHttqpx4rxJ5hcCwNi3E5oAofOs2PMb2WF1yFu6i
         Dz1WQQS/9BVa7GH7q2EBsBaFxd78edHwBBq+qzxbJDiZc39tb1XgciFK0H9KSGyX91HN
         V4rw==
X-Gm-Message-State: AOJu0YxfIoetU8kC8gyzSMBemw5CX4Upo3iqKbjke1TD0ndWp+s5oIlV
	Qg1KcQHy2Ha3VVyn6cW+cJy3dYfsMIeDUGkhxoENoD6VXGE=
X-Google-Smtp-Source: AGHT+IEVgOqtLXgDaHDFy3y6Fh8P5cABV4kWuOysnkelqrrbtl4SbnJ7XwvgAhROpYf3af4AGuTxLA==
X-Received: by 2002:a05:600c:4e41:b0:40e:52e9:5681 with SMTP id e1-20020a05600c4e4100b0040e52e95681mr567614wmq.10.1705051985621;
        Fri, 12 Jan 2024 01:33:05 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d63d1000000b003365fcc1846sm3312055wrw.52.2024.01.12.01.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 01:33:05 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: quic_jesszhan@quicinc.com, sam@ravnborg.org, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
 airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
 quic_vproddut@quicinc.com, sumit.semwal@linaro.org
In-Reply-To: <20240108095902.22725-1-quic_riteshk@quicinc.com>
References: <20240108095902.22725-1-quic_riteshk@quicinc.com>
Subject: Re: [v2 0/2] Add support for Novatek NT36672E LCD DSI panel
Message-Id: <170505198451.981833.5364543733746481600.b4-ty@linaro.org>
Date: Fri, 12 Jan 2024 10:33:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4

Hi,

On Mon, 08 Jan 2024 15:29:00 +0530, Ritesh Kumar wrote:
> Add support for the 1080x2408 Novatek NT36672E LCD DSI mode panel
> found on the Qualcomm QCM6490 MTP board.
> 
> The driver will come with the uncompressed video mode support.
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: panel: Add Novatek NT36672E LCD DSI
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=30cc664f0962ed1e62d9009a34bf04b48e1a5a4a
[2/2] drm/panel: Add support for Novatek NT36672E panel driver
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ea4f9975625af861c2795c557b8fab2b492ff749

-- 
Neil


