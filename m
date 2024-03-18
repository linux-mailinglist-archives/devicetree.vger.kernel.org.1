Return-Path: <devicetree+bounces-51115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 872A487E3E8
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 08:11:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2EDF41F21675
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 07:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E772233E;
	Mon, 18 Mar 2024 07:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bakgQLXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDA621360
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710745895; cv=none; b=CodeJwa5sr5hqVDCihtQRa+Ja0DQ28TTILsmuLedWrK47Bb/9VsbA6yAn13ANaNUYE/LgBm5iihvDZdJl4gr4wGPJaS5V+AmkNfgo/iu1aQEpr4QfIrB+6B/fFb2NZLbo6HQAlALu6ZpEVcWlXD4GtwK2YNr3eNH86Y5IqyxN80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710745895; c=relaxed/simple;
	bh=SrururavG+N20uLQV6wSNjtVq09E7FD8xFoRu1t6mQo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=J9R7wpYIZPbiL4ogbKJxNfUq9gEOO9AN+D70kWk9lEXXzioNko+UYPjVLr6dejfFOXrVe41TG3FbW1cxMKNRZ/b3iKFvtneIv+5uvZl2CuLZ0P5+l2vj8P28FkJQG4pq/ugdd03MDN+FtcDeLsUOrsvO8neWrk/NS+pHm4lymTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bakgQLXM; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-56a0c0a7ebcso651716a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 00:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1710745892; x=1711350692; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VeRv6wWUGO4049P3j2OySs144lGj+ZeTDqiDzx4NR1w=;
        b=bakgQLXMLf7k6+t5tJnz60ny6stSr7FlrA8d9sdoTCbIlympuWa+KKZGNCQhVuJ7I8
         /26gA+tDvfn32iJ7n7k+awVGYd1ExNW3up3VgGVDzBr9YPEPG5ZuxaWD0TRDDb+QV+8N
         0iSxbBr+m/aGRlUuJZKqsA3i/HVWBd9HbWIN/epfIhW6EvxddHxX3UKqtrGMaqktb00Q
         v/FoVgq9jsDE94lAx7E1gs1p3wmt8pjrip9nJZDDrpINkt7OrZFUD8/nnUm7c1HyPwmp
         XOmShVREYwRBqHas3HgYSs76QdUME1dgy+beGUfxcx7EWZzcPkanoRLaUgUoMyEtrc3i
         D4gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710745892; x=1711350692;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VeRv6wWUGO4049P3j2OySs144lGj+ZeTDqiDzx4NR1w=;
        b=S1NuxVpTCU+RneEFgt0IN4Uc5SCC64lX59M68EkS9G5qk20YVbAXBQkncCSS65imsU
         kU/msvaDB0YGx820J3LfD/1teYWw5yop6khBHipjDgLCoClKbMMcFjQpRfIB5f12M5qC
         rZ63jmA8pNy1Isp780mt9Tk61cKGrreQaWxT47cUjzt91a0Qi5+x7yOY1NxstjKO1A+t
         zLSYFcEz6vaJ1VZ8Yy3ZVN0HQgvY1VIkLcNWKWmNJjES1SkNbfblWoykibEnYvWwwkl1
         /C9fR76ozniZ7smT+7MekpKSsBFduBGCE4x84Ai3AAebklcRdwteIiem0sh20fAVvEs0
         gTzw==
X-Forwarded-Encrypted: i=1; AJvYcCU5H++a1jGVFN+FoveQfDIqoPpGpSEhNzm767yr00rzaM952KxELkRRoiV07Ri44NkTluoeLGgtxTGvU+JbBL73SHunuSyu2ztUag==
X-Gm-Message-State: AOJu0Ywe/IyBE/C+5nqTo57HW9tm/qoUVQpgYK9Al3H66ZjZ0lqtA+Cd
	Lf4yPlHbnboBRJO/eB4Gt7ezOLuBK8P2M536NbdgCereWsD39lI1cXjvzyd89/c=
X-Google-Smtp-Source: AGHT+IFFvAoRVXiyVVbqmQ6QoDavb++Ps/7SqBBQhgnyqUgmFdd9+pMtZIjKJBie44OQFsvt+LH0CQ==
X-Received: by 2002:a17:906:ef03:b0:a46:c01d:b595 with SMTP id f3-20020a170906ef0300b00a46c01db595mr1208577ejs.53.1710745892434;
        Mon, 18 Mar 2024 00:11:32 -0700 (PDT)
Received: from localhost (046125249120.public.t-mobile.at. [46.125.249.120])
        by smtp.gmail.com with ESMTPSA id lx9-20020a170906af0900b00a4638693bbfsm4477665ejb.116.2024.03.18.00.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 00:11:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 18 Mar 2024 08:11:30 +0100
Message-Id: <CZWOT0K3AE2F.1BUND7M9Q5RXO@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: clock: qcom: Add compatible for
 QCM6490 boards
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Taniya Das" <quic_tdas@quicinc.com>, "Stephen Boyd" <sboyd@kernel.org>,
 =?utf-8?q?Michael_Turquette_=C2=A0?= <mturquette@baylibre.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konrad.dybcio@linaro.org>, "Rob Herring" <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>
X-Mailer: aerc 0.15.2
References: <20240318053555.20405-1-quic_tdas@quicinc.com>
 <20240318053555.20405-2-quic_tdas@quicinc.com>
In-Reply-To: <20240318053555.20405-2-quic_tdas@quicinc.com>

On Mon Mar 18, 2024 at 6:35 AM CET, Taniya Das wrote:
> Add the new QCM6490 compatible to support the reset functionality for
> Low Power Audio subsystem.
>
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---
>  .../devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yaml       | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscor=
ecc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.=
yaml
> index deee5423d66e..861b41933525 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yam=
l
> +++ b/Documentation/devicetree/bindings/clock/qcom,sc7280-lpasscorecc.yam=
l
> @@ -30,6 +30,7 @@ properties:
>        - qcom,sc7280-lpassaudiocc
>        - qcom,sc7280-lpasscorecc
>        - qcom,sc7280-lpasshm
> +      - qcom,qcm6490-lpassaudiocc

So QCM6490 and SM7325 and SC7280 with non-CrOS firmware (maybe some WoA
devices?) are supposed to use qcom,qcm6490-lpassaudiocc then? Is this
what is intended?

Regards
Luca

>
>    power-domains:
>      maxItems: 1
> --
> 2.17.1


