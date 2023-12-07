Return-Path: <devicetree+bounces-22755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A18AB808A66
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D12AF1C209AE
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAAA41C91;
	Thu,  7 Dec 2023 14:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ufIpyYe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBDB2387B
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 06:23:45 -0800 (PST)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5d226f51f71so8004377b3.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 06:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701959025; x=1702563825; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5PB4SuKTXi3vWYEdpE3Wie0ciKcRwFmeYXUm8A8+YSs=;
        b=ufIpyYe9GDd8dEyr8zpspxsaSSvdm6Sy4L8Kj9Ep/ED62/5X5OJIqfxtE3ykFfrOZn
         jigiBFCZt47BbnW2iaz50jbfjdSOymPM1Nrjin+gFuHZcJjLurpnUf4gv8JzwRLX1vgB
         DkYY1nj8mSU+sLsb2bYeaejVhU+ppHb81ExNRvvmvFebmh9u9RTutU8YjPxtz5t0zRVy
         eQUKbDXeIwkAa3Q2td9Baau4VbwePPY9rTyPonIn+NHtaLUUV/005f977N7GAiwG/uCh
         mf6fLV4BBgtu28T77v0Qbzq4dgZx1JG/Cg85ZxRNrw3368D6HyLhsZ7Ng7g/uAHb4dWQ
         BoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701959025; x=1702563825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5PB4SuKTXi3vWYEdpE3Wie0ciKcRwFmeYXUm8A8+YSs=;
        b=fMdA0Hc9XsLed1tkevRQflTFJqZlspdf4NF7ehmAgJhq4rWz/ciYJ9S3FyrY2+J2nj
         uhBp+hWpAv3wwiT4+zGohXNTXzwpwUXoozRsvDESgb98w5wcz6FZyILHf+wYwTeCdNY3
         hTh7mJdFDRLsWrgXLlK5tGRqaaRWCgefIjV4F4M4F0ulZkNuiuhIkEU+EKSWZNByq9BU
         eZkgmYeUBAFS21IrmlVc1jdKebI+UaHm4EhL4aM7p6+rov1Z9yPRy/wsD+PABFxLlaig
         QQprDqWBErC5BXFY1zxH25ZgXWWxjfi/0Iat20bDSCeFNLOfzf86gL6JqrvcrP7dNxct
         qq9g==
X-Gm-Message-State: AOJu0YwVnbxlD6yRXtv2ug/kWjye1UOw1P+vmMiA2+I8OS1vaOqAxpem
	Xxy2pnAdvJjomfwkJXgNF61doeItXUc7MlvY+4djkA==
X-Google-Smtp-Source: AGHT+IGfiFTM8GZxS753jZ+JwDwTvVydQKxJP11NtmOlQUFXtGLpBPuy36JI1NK10sQOiZkr4p3dfd2RnJT+bkeuq8Y=
X-Received: by 2002:a81:b643:0:b0:5d7:1940:dd7a with SMTP id
 h3-20020a81b643000000b005d71940dd7amr2399911ywk.80.1701959024962; Thu, 07 Dec
 2023 06:23:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org> <20231201-x1e80100-phy-combo-v1-2-6938ec41f3ac@linaro.org>
In-Reply-To: <20231201-x1e80100-phy-combo-v1-2-6938ec41f3ac@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Dec 2023 16:23:33 +0200
Message-ID: <CAA8EJprAX3d03t2K1aj-ATW-+pcQH+WuwUNcXZDZj3A1wfRw4A@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 7 Dec 2023 at 15:16, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 has three copies of an USB/DP compbo PHY, add support for this
> to the Qualcomm QMP PHY driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 170 ++++++++++++++++++++++++++++++
>  1 file changed, 170 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

