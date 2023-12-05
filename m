Return-Path: <devicetree+bounces-21644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C42D804C3A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25E541F21416
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FE253C47D;
	Tue,  5 Dec 2023 08:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bnOUq2X0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AE1CC0
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 00:26:57 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c09b021daso25025615e9.0
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 00:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764816; x=1702369616; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhk0vrrK3aMQqTPPZhkL5dCm1kbb+HSVRSnOFk8wugY=;
        b=bnOUq2X0mfzmXl3wGHhkebS0nutVOP4yzaHaIOMQfbuHp7ZWE7sw/Ju1cP9Vpn+1xp
         iyRU9y5m8QWJtBtXkuwPQWZ1NEkm8nAmcdeSHJJ81opLv9m6MWD3VUYV7ZSl3HX/TJsX
         2/jxc65tZVIleMJxtvMwRDU0Hk0U4j45csBb1BOoYiDKxn5qOoVWaPhqiECXAzcQdJQE
         ElgJv4JxTG1ixRXvsJ45XAMohiYlgd56riZt73vSUOErn4sjGHJOVS8aRp6ZlFGLKFCI
         SxZnyQBHyulS2/5Z88kYvMpz1OMJsYSGDv/LUwKdUui469UZ8b97tqDyETenMGKNjSyu
         ZAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764816; x=1702369616;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhk0vrrK3aMQqTPPZhkL5dCm1kbb+HSVRSnOFk8wugY=;
        b=cUYWB+z5h2LOjX9AWM3IEMZ6bp7iGTATiKMGsAr27spFSciuHwaKQMRxrhoXwFRu/k
         CT3FDDlaNyJeFqyLEp4w66IO2VYAWC+lxrrsXgAy6hdXCa2GalNyPakjQFu+Eqa8qIjq
         1XUjBt7juBIaNbGgcqHEskgwgRVK+CPWny/bz7G9OTyDqO21tbEMvuo2k3ju7jRmKnuM
         5hxUQrTjpV2QJU3/SRDoxmuq9ONpbg3T3QW873b0vnOXw55hzULD4/xolZDXhqxIm3ij
         u4T5KuUnkmMtZKtc07+QzUcxMClAjRye3LBy920BW6kl+alMAY7MzV5CjV1HB0YpZbhB
         Lfig==
X-Gm-Message-State: AOJu0YwhPN0hqZqq94NCDWCoGuXDTwnphPs3kAcB18BoMIt0Lwt3Yl/+
	dOc95kvqhWKWDb4E2sQsW6TJKpSJS46PNxMtSnZfo3qA
X-Google-Smtp-Source: AGHT+IHPShSi3GvRNJWHwAxMtJssSWjt72NL4oJ9fh+a8bP3Z8ocH3lCJwCKGGEKvGVi37O0qYOMAg==
X-Received: by 2002:a05:600c:3c96:b0:40b:5e4a:4063 with SMTP id bg22-20020a05600c3c9600b0040b5e4a4063mr214136wmb.131.1701764815659;
        Tue, 05 Dec 2023 00:26:55 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id d4-20020a05600c3ac400b0040b538047b4sm21329282wms.3.2023.12.05.00.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 00:26:55 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Michael Walle <mwalle@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231123102404.2022201-1-mwalle@kernel.org>
References: <20231123102404.2022201-1-mwalle@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: add Evervision
 VGG644804 panel
Message-Id: <170176481474.4073725.14480764473949447794.b4-ty@linaro.org>
Date: Tue, 05 Dec 2023 09:26:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3

Hi,

On Thu, 23 Nov 2023 11:24:03 +0100, Michael Walle wrote:
> Add Evervision VGG644804 5.7" 640x480 LVDS panel compatible string.
> 
> 

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/2] dt-bindings: display: simple: add Evervision VGG644804 panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=2a5244a04e751c8617d5e7707550d97a83b1102d
[2/2] drm/panel-simple: add Evervision VGG644804 panel entry
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=1319f2178bdf1898a76ea8c4f00d57b240bbc5fd

-- 
Neil


