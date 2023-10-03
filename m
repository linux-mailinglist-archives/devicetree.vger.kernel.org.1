Return-Path: <devicetree+bounces-5644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 320C07B708E
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 20:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D6282281309
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 18:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389683B7BB;
	Tue,  3 Oct 2023 18:09:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE80B347CB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 18:09:14 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E6EA1
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:09:13 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1c6185cafb3so20835ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 11:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696356552; x=1696961352; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z5ADml8UEYFyYxVl60KXFq6v7496GwJKAXl/Dq0m1dI=;
        b=RRxdlsuQc0jVRVXE9oQ6YyG4Q3I6bHV4f9kTbEr9/AvfmyMEOr8eYivSIsuF0T4Gh8
         eHH05eftwvm8/ZFQxEaP0+NKz5xNZ6BGeOETtoW1oacstw2MbGly5G24p1L4ANK0tX8r
         Ay4NdgBNv+5fWg3DE5mAHbt/b3Rs4sYRXyL3Rt7n2dOTpyiMLwUH97p40WQKFFwxmgVJ
         coPZ6CSJXV2wYzsSvr+L37xwnmSO3HqLt5RHlCuGqudkBynYUsRVI7CbbQndnhy6+NH9
         vn/fdXPgmdM3+wOpxM1aKESOKV5+VNtxC3kTCUEnpxqQiDnfxLZV/ehQOMUIjX5ys3Tf
         skZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696356552; x=1696961352;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z5ADml8UEYFyYxVl60KXFq6v7496GwJKAXl/Dq0m1dI=;
        b=e+1XDmAAJpxUpZmV9E27+p/Nzsi0j2hfWYxigMaUDRb/y1ym4nAJLqFJ6oBKgyJbuD
         eM404IIpe0pzIR33siMO+chheAONZGn1RmJ+Yg2DGYyBz6lcRWHDsfU+smmVDGPnm1Zm
         jNn6SDnzaUDNarEe+VEC7EH5XbJmUT/DnGNb6wsaso+Nw+WCersSTJBee+6VzRMqRbW8
         DdwJDK86BlrcTGveVqQvGWDcj3VkfUAEo/TKnHI4APEQtQdwuktuNjUfOVeRy/KYUIko
         jxWnjZ3VjtKiQczhCoYOJw6ckf+FY/ThHNC0eV5YrwAhAuQI248gvCfiyDvqXJWO/9Um
         pfLw==
X-Gm-Message-State: AOJu0YwaxSuB97XiuWpvETZd0h7bMJJzNY/THA3Rf8k1mZNzV1drYPOq
	jHdz5b9YW8KUCx2ry/diuHsqsUXUbKMBk9PrMHuq
X-Google-Smtp-Source: AGHT+IEl6IJ3DsIw7oyXRf7R7HS8s4r59Isc2f9JN+K4IY+u/eiaCuHNxh0RznXZ+FmVCsNdWoBLHGhb923Bp4V1USc=
X-Received: by 2002:a17:902:dad1:b0:1c6:1e4e:b770 with SMTP id
 q17-20020a170902dad100b001c61e4eb770mr19311plx.28.1696356552314; Tue, 03 Oct
 2023 11:09:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 3 Oct 2023 11:09:01 -0700
Message-ID: <CA+ddPcPS8oUsMk0ziumwdTTWetekE37cK0Gkt9x5w2ig1m2pXQ@mail.gmail.com>
Subject: Re: [PATCH 01/10] drm/mediatek: Add interface to allocate MediaTek
 GEM buffer.
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	drinkcat@chromium.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, 
	Johnson Wang <johnson.wang@mediatek.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linaro-mm-sig@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mediatek@lists.infradead.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	Rob Herring <robh+dt@kernel.org>, Shawn Sung <shawn.sung@mediatek.com>, 
	Singo Chang <singo.chang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
	USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

You can remove the DRIVER_RENDER flag from this patchset. That should
not be upstreamed. The IOCTLs are still needed though because of the
flag for allocating a secure surface that is in the next patch. If
that flag wasn't needed, then dumb buffer allocations could be used
instead.

Thanks,
Jeff Kardatzke

