Return-Path: <devicetree+bounces-31825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BAD82CCF7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 15:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82D72B22C58
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 14:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2292135B;
	Sat, 13 Jan 2024 14:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IxhSLOpw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D889821345
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 14:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbe69afb431so6332246276.1
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 06:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155378; x=1705760178; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1/tZMHFRvgZGdip0cvQrcsGGEtc7ulNA2Rsa3PQ+nsg=;
        b=IxhSLOpwxXb9HQZ/sYCT3C3PamaeYDROF9Nu+jHGo24D6rEpg5CLBnXamK7IpyKmAB
         IfB2zyT65JUGfX7j8aMH47WFDHhcw7rQjQMAcvsGmYNxYbes6p09mtqPKZZH0yDIFuM5
         qJurcFXba87ODA1P+ghM/PX4pfQx7vZIGvhGny98KjD7lO2zlCeo/4Ss4qzURsjV36L1
         wfX86R4jCMbuNOWnbKCAdXdG2nhQCoVR1nAo+WSJqU5PtiUvNMX4fLB7PzMwG5F/lY/e
         7YAkvrXdwV7gjpIg0TACPZsMlURvAvxrnEDjLnx2WpB2oc3yasF7g/lTBKy+aqYeoA+X
         ufww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155378; x=1705760178;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/tZMHFRvgZGdip0cvQrcsGGEtc7ulNA2Rsa3PQ+nsg=;
        b=bUxMLU5m3EcaM8AzWsiHzK5Wj/yrLy00HhUP+OAGFkzv2tyCJZXfohk7kEDiA++hnR
         M4v+yNFkk7d7Woz3oLSITvLpGH5MtStCWDQ6svc3q7dO8PwG5X4V1rjLTGuFrZduTquW
         uHKXquBfxbrWAIQKLPQnrb2ASVqQ6AeGDFwq6gOq+agGBTDn8lNu1HAmZnsR4LwzZlE3
         J0jekqUGjH4CySQx2nxLqHDeZZ7EXWBSIElo55sdEG+LV9c+5smyXJWOQTiWCVfRWSLr
         88IbjG1A57rZVDiI/DC39N4Y0ETjFsJ79fGGKra0tvlXUYNFIF75mGqzcfNChMbXDhC/
         FAuw==
X-Gm-Message-State: AOJu0YzMlOViJ6Zy8/DeSnfaDQC8fXO6WW2/s6c2aSY9U/rBdiRji+sE
	VJ6Frelue11Wd4UuEWNEZq1+k8HN1pBFFDbTT9LArdr5xjLrog==
X-Google-Smtp-Source: AGHT+IEoRuUcGJONarvwP7Q+HEhsqjkronLEa43W+AK3zy7ViEBV3phu7rdsnjoiEtXRYACJlZFwuhd4Pv2Z8sFEFSg=
X-Received: by 2002:a25:690e:0:b0:dbe:f0a6:cf8a with SMTP id
 e14-20020a25690e000000b00dbef0a6cf8amr1762684ybc.44.1705155377864; Sat, 13
 Jan 2024 06:16:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-9-de7dfd459353@linaro.org> <35f9ee57-3a4c-41d3-870a-f78c873afbad@linaro.org>
In-Reply-To: <35f9ee57-3a4c-41d3-870a-f78c873afbad@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:16:07 +0200
Message-ID: <CAA8EJpqDGgbbRe7J4+Cy3EkN49U7=my-EgAZBFZVatEbOtre2Q@mail.gmail.com>
Subject: Re: [PATCH 09/13] phy: qcom: qmp-usbc: drop single lane handling
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 13 Jan 2024 at 12:46, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> > All USB-C PHYs use 2 lanes for the USB. Drop single lane handling in
> > this driver.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> Why is this not part of the introduction of that driver then?

Sure, let's squash it and perform other mentioned cleanups.

>
> Konrad



-- 
With best wishes
Dmitry

