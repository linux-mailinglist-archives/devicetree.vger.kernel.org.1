Return-Path: <devicetree+bounces-274800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id p5uWKC0es2l/SQAAu9opvQ
	(envelope-from <devicetree+bounces-274800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1353F27896D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF7AF3256FE9
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C9A402B87;
	Thu, 12 Mar 2026 20:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="q2dicZ3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6930A40242B
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773346033; cv=none; b=VxlfpJ5f5DiqyiuO6OG+1LZhgzF99LxKXKt3jKla7DAnqpO2K2VLzJ8FkeJGLQepMwpym6Q/q5qmw6jbrV5HmrBQZxBBfgCTYwVRyKxdtvPNFhHSwLPP6Loyl7o0hY1TUoMYQjupxy6k6PkUuqHXu7ooqZQuOQWlIInyXqeQSYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773346033; c=relaxed/simple;
	bh=mkPn6azSc5sBdNjIBFEPFL6chM6v748TKJtFgSgI6eQ=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=LfXSo3QzL691zGln1/n3ekuYcF6om0A/6KeJTffwppo3BTDG4L9YKUi7rkajUnmb3wkNQNbs3Mo1KoOFRE3P/c2I5VYL7X2XA+KEpTndskMcvvtqbwaQViARrskXLNMx+y/2FLf+tmTYt8dS79SFktPKU+ECUNGChMG/kMtPoNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=q2dicZ3S; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-41708f6c3feso935475fac.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773346030; x=1773950830; darn=vger.kernel.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pWby7tRTaFMLCxNO3vkJZ08S+rk6Df/iLShGmtlipk=;
        b=q2dicZ3SnpIS4khOQpYl6JJsTkgwF/v8Tiyv5QrQWYES0Hp/od780CRaSel44Bpdd9
         onKCoW/cyjl2cTrmfxnM/u8aEdTRWd7BrEe+uwxclSzBjHa+Av4bgrv9Lb0ezEQnBmom
         QHQcouCrZgi9/OBimwLnWzyHUZ3juoVdN8myQKbqsNNa8+PPE5bO3/mKR+UQfQKqpVHx
         rAdEHvXZINikjEUqVQFQgsKHxt1HaXUNDDEXAs3lQx9JHBvEPfaEhY7X0Xg+SV/sDnGc
         eLg0jTbANl7prlenWHxeaSCBXxnSEG/qF5+/GkkQyk+nDQBlw2t4G0pJz8FTfzjM3K9P
         ZVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773346030; x=1773950830;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2pWby7tRTaFMLCxNO3vkJZ08S+rk6Df/iLShGmtlipk=;
        b=VcZzj/xCw06Zd2maDkrlVK2Q4Up9mfbdQkJYK6w18blQqknaOk8AfmCJvSoYEp4sIt
         Nl+smm2iF1n+t/NQCkM5NRKAsH00bm1a++dCyUaa/jCCpdqUXbLNwvMjnQDCE/vvurJN
         fcRBz3Y87kF8rdhhvx54Pmmwbgor+I6zBZJuvcFFf6DXvHNtTUyWBAn0H/gl9C8MLHaQ
         FDgcI20oaeq57duHj0kJqbHbhEOp4X+bp4rBY34vp7097kdzdz1E0ItMVAFmvxwm5/MF
         rJBgQ2GsYBHPVrVvEIeXtznjbGmXXj8cr3egqBurAWtBzegkLUIK9nZYxSrtoW9EyV7s
         UsfA==
X-Forwarded-Encrypted: i=1; AJvYcCV8lSWJgSZl7DDjQkOqXyvQk+Bo8y/4sJrRD+zAcsHtlZAeZjy7lHtjN65FCIpivtVgFQ2Mgp23lIaO@vger.kernel.org
X-Gm-Message-State: AOJu0YzdsmiXCKM9gIjwn4ui0e5zwaqqRmjPmyw9J4XrjETshBqK12Jf
	pfw38B8RB7VCO77GnSJooPkURSAHQaSrFxlGauwGL2K/VCo5QNeUX+u/LLz02xW2tbw=
X-Gm-Gg: ATEYQzyrrpiFm4kuT1MqlRxMchu67sKH+N1K/3PnkHd6e2gLRQS8Q8vzYzHeTuxFZZF
	jtKKNJhoYI2JVkLpWzxO+WT/63l49W56M+gzESvwkvd/DctvL6o0+8GsFUeGlx1jMhm2f8sQK/7
	PUgAiEH4z3tHmLygLzAk7WDN+NlOHtFv7/PKgXOJGhIn3kDL0Pjw5V6bh8q4thcJ7LjIFXpJ3xy
	vb5BNlrURcJU5+YtIfMu12B0i2cADhj9q6L5/VuZGyfAnIJQ6nzU7ie1KOQn6cvXfm+Nv4PvMZi
	IfhWD5ZgujFXRUr9rV0NrSf7cVkq70bQLwmhwm8AkdyHc/SLhtgPCxttqzf9neQFX74DDwHXRaR
	rYO+ir3bZwPUJGemvCtV1tCFMFw15MwuVc8E43VxSyTuUJzhkcXINfed5zcbhL9Phdl07eDp4PX
	h3IVslz9G1mjJXKZUPPdcoX778WYG8
X-Received: by 2002:a05:6870:a796:b0:3e8:8b6f:9d85 with SMTP id 586e51a60fabf-417b937d46cmr332682fac.29.1773346030308;
        Thu, 12 Mar 2026 13:07:10 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:1f95:f82e:8747:8137])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6c7885sm5600081fac.17.2026.03.12.13.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 13:07:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v6 03/18] clk: mediatek: Add MT8189 apmixedsys clock
 support
From: David Lechner <dlechner@baylibre.com>
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>, 
 Miles Chen <miles.chen@mediatek.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 netdev@vger.kernel.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com, 
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
In-Reply-To: <20260309120512.3624804-4-irving-ch.lin@mediatek.com>
References: <20260309120512.3624804-1-irving-ch.lin@mediatek.com>
 <20260309120512.3624804-4-irving-ch.lin@mediatek.com>
Date: Thu, 12 Mar 2026 15:06:36 -0500
Message-Id: <177334599652.4124794.495599695131479130@freyr>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1679; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=mkPn6azSc5sBdNjIBFEPFL6chM6v748TKJtFgSgI6eQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpsxzdMiMJbTxqXDno8lz7uKeJqq/XgEtUTcoAy
 ZhkKwBwxnOJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCabMc3QAKCRDCzCAB/wGP
 wFqcB/48FpvKpV3InEamRZjYBZWJ6fLi/SAwUkbGJyUmItM/vnWwftYkuxXm1sC369JhkJ6LTZ6
 YfgivaaIA/87e8AwAr90CJKmSjB91XqNMT4+0k8RYkN+77VvJcZ2apyV/geYv8E1R7u7nT8gr0m
 fsxRyDy7ZrMFdpc8ENod3K9Tt/ord3fYSSeyUQBCbbZUha8Gsrh4ptu2rpCErKtQ6Vigzdjiw1z
 o+eTFnGlkzvD7rcJLxm1Qp8UAeRgvqtYIFmydhZNYocG71l1fIEkKe+XDpvnBMkYyj3dW1+mP+Z
 1SKiymojf8wZ+PdFx4HI3agvkAyfo/sl9yqVkSAZvBJAm859
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274800-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 1353F27896D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 09 Mar 2026 20:04:45 +0800, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
> Add support for the MT8189 apmixedsys clock controller, which provides
> PLLs generated from SoC 26m.
> 

...

> +static int clk_mt8189_apmixed_probe(struct platform_device *pdev)
> +{
> +	int r;
> +	struct clk_hw_onecell_data *clk_data;
> +	struct device_node *node = pdev->dev.of_node;
> +	const u8 *fhctl_node = "mediatek,mt8189-fhctl";
> +
> +	clk_data = mtk_alloc_clk_data(ARRAY_SIZE(apmixed_plls));
> +	if (!clk_data)
> +		return -ENOMEM;
> +
> +	fhctl_parse_dt(fhctl_node, pllfhs, ARRAY_SIZE(pllfhs));
> +
> +	r = mtk_clk_register_pllfhs(&pdev->dev, apmixed_plls, ARRAY_SIZE(apmixed_plls),
> +				    pllfhs, ARRAY_SIZE(pllfhs), clk_data);
> +	if (r)
> +		goto free_apmixed_data;
> +
> +	r = of_clk_add_hw_provider(node, of_clk_hw_onecell_get, clk_data);
> +	if (r)
> +		goto unregister_plls;
> +
> +	platform_set_drvdata(pdev, clk_data);
> +
> +	return 0;
> +
> +unregister_plls:
> +	mtk_clk_unregister_plls(apmixed_plls, ARRAY_SIZE(apmixed_plls),

Should this be mtk_clk_unregister_pllfhs()?

> +				clk_data);
> +free_apmixed_data:
> +	mtk_free_clk_data(clk_data);
> +	return r;
> +}
> +
> +static void clk_mt8189_apmixed_remove(struct platform_device *pdev)
> +{
> +	struct device_node *node = pdev->dev.of_node;
> +	struct clk_hw_onecell_data *clk_data = platform_get_drvdata(pdev);
> +
> +	of_clk_del_provider(node);
> +	mtk_clk_unregister_pllfhs(apmixed_plls, ARRAY_SIZE(apmixed_plls), pllfhs,
> +				  ARRAY_SIZE(pllfhs), clk_data);
> +	mtk_free_clk_data(clk_data);
> +}
> +

-- 
David Lechner <dlechner@baylibre.com>

