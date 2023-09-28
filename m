Return-Path: <devicetree+bounces-4323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 486E97B20AB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E9C85282863
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7634D91B;
	Thu, 28 Sep 2023 15:15:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49094D8FC
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:15:02 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6FC7F9;
	Thu, 28 Sep 2023 08:15:00 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: festevam@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id D188086D86;
	Thu, 28 Sep 2023 17:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695914098;
	bh=pY0CXKbCgt+oEjgVyQIM5pgTX3AWgto7saofKKuBxFE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PQ7dbFmQ6hizVDBfzDcUGirTC9lXRC0B26umCbtU25uGU4BidUxfgQCbTKx8GDUys
	 tmIlGjFe+avizq0sa8HVj5wh0xN1JJgL8CJ0QiDr1su394yiqwMr/F/vp/35DWRiKw
	 1HGvf04MQa/DgpWEnK9SutfVXDVEAHFb7+SNpSbPgTdPDBf3jSpGwEPmvyQwo95Xhi
	 zH/UNnUrSHTZuR/KKhyMuPPVogw8dOQMRt9zT+ArZPITGf8ZSdRolz5bft3DyzvqbW
	 do7EJT+dLCrMpzZNT4VUxaAg4mVVpx48esHr2HWhQAibm7hgHbx+ZXOBjZW5iQjfKE
	 s24EwFR2JiLQw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 28 Sep 2023 12:14:58 -0300
From: Fabio Estevam <festevam@denx.de>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Fabio Estevam <festevam@gmail.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, martink@posteo.de,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] media: dt-bindings: hynix,hi846: Document orientation
 and rotation
In-Reply-To: <avoixz5pqixr366cqks672akniv7h7ewix4edoyikg23dv24fd@bquxelr53t7t>
References: <20230928121424.388019-1-festevam@gmail.com>
 <avoixz5pqixr366cqks672akniv7h7ewix4edoyikg23dv24fd@bquxelr53t7t>
Message-ID: <e5002417d8d3ed29a0289d3895213f64@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jacopo,

On 28/09/2023 11:57, Jacopo Mondi wrote:

> Counterproof: It's very easy to break validation of, in example,
> ov5640
> 
> --- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
> @@ -109,6 +109,7 @@ examples:
>                powerdown-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
>                reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
>                rotation = <180>;
> +              orientation = <0>;
> 
>                port {
>                    /* MIPI CSI-2 bus endpoint */
> 
> $ make ARCH=arm64 dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
>   DTC_CHK 
> Documentation/devicetree/bindings/media/i2c/ovti,ov5640.example.dtb
>   'orientation' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: 
> http://devicetree.org/schemas/media/i2c/ovti,ov5640.yaml#

Should we use unevaluatedProperties: false instead?

--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov5640.yaml
@@ -85,7 +85,7 @@ required:
    - DOVDD-supply
    - port

-additionalProperties: false
+unevaluatedProperties: false

  examples:
    - |
@@ -109,6 +109,7 @@ examples:
                powerdown-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
                reset-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
                rotation = <180>;
+              orientation = <0>;

                port {
                    /* MIPI CSI-2 bus endpoint */

