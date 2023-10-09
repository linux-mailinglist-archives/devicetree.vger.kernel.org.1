Return-Path: <devicetree+bounces-6934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E63217BDD6D
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:10:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 235091C20988
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55BA418B11;
	Mon,  9 Oct 2023 13:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ZqW54PP/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE2BEEA7
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:10:04 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 952FABA;
	Mon,  9 Oct 2023 06:10:02 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 399D9iBd043923;
	Mon, 9 Oct 2023 08:09:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696856984;
	bh=BgxjJaKkhypgGTDotppIbabHhDLsyOxiD/tKF7b/5FI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=ZqW54PP/AxS+p73SATwC9HUEgdTUUhWoBKhYUyzEjt12mijfuSVAdPB3iUNe6pIct
	 18E9IVDZ1EN3lek2sgg4TIT7sBAkRsWvXI7Yy7yeWXcddxfK2SMqQTktp7rVl7mSx7
	 qkO46RFBtOUdxPLsuSVCO+vBHuHZEJJW0SknWbbM=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 399D9i7R076972
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 9 Oct 2023 08:09:44 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 9
 Oct 2023 08:09:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 9 Oct 2023 08:09:44 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 399D9hPS117909;
	Mon, 9 Oct 2023 08:09:44 -0500
From: Jai Luthra <j-luthra@ti.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tomi Valkeinen
	<tomi.valkeinen@ideasonboard.com>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
        Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        <niklas.soderlund+renesas@ragnatech.se>,
        Benoit Parrot <bparrot@ti.com>, Vaishnav Achath <vaishnav.a@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>, <nm@ti.com>, <devarsht@ti.com>,
        <j-luthra@ti.com>, <a-bhatia1@ti.com>,
        Martyn
 Welch <martyn.welch@collabora.com>,
        Julien Massot
	<julien.massot@collabora.com>
Subject: [PATCH v10 02/13] media: dt-bindings: cadence-csi2rx: Add TI compatible string
Date: Mon, 9 Oct 2023 18:39:28 +0530
Message-ID: <20231009-upstream_csi-v10-2-330aaed24c5d@ti.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009-upstream_csi-v10-0-330aaed24c5d@ti.com>
References: <20231009-upstream_csi-v10-0-330aaed24c5d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=970; i=j-luthra@ti.com;
 h=from:subject:message-id; bh=yrzgWB6pzGmHW+FN3ZDQrdA1db60oGi+PIM018sEEvc=;
 b=owEBbQKS/ZANAwAIAUPekfkkmnFFAcsmYgBlI/smnhGLhA7u9h02i3/0Kd8QycjSAZBnEvf7V
 PPfSv3v3s+JAjMEAAEIAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCZSP7JgAKCRBD3pH5JJpx
 Rb5vD/9cHjnkUGH6ekQ9asA/a8pWobsNyak08z5s0JHR1M/dAGkWrqTvrQpK0o7tKRbPfUu/tkZ
 uZnCk1KMH+cy/K6kQXlJi6+QO8oFkdjsSPrXpo9/zXFpdwPKjzR4n+pPxHPxpAe5v7aGw/RMMlM
 M2RHMeejKY0UOwfFe8OSy3/GW/tqRKRz4KAfJwAJxA2QoOuBlXlxjovgpbGLCoZ8gPRM4SxAJDo
 BjRE6XHYo6PTdm6XL/YqXDuGUIUWZcDTeGZebV1To++Mr3BBdlPbnA80KGm+nW+3ps76XBqk38L
 hlAEMdgpGwVLh0Q7zSGUk2Ph2ghqM3LJnS096+sjjsTUIzAgcWCBBmmUhjc4c1l/HPYpMWBFOnU
 TZg31qnFf3tcX07pGKVl36xPPrX7iAcBINDpITyHjMiywVn4ZfOaoxzJ//99ZnAuNFqExcZ8vqv
 +UG4LdlaA3jWKr/LnTkcBkYVUOOjUTa91T5bRdOwk1b0pzN9IHyVvwpq1f+GdW+nttLhKCclJxv
 uIHmbEx7K5TZqlsABoALdPb2ymZhYdI90LY5YWSykFUb+oP8tx56I9fnnvqaDuvt1BSLJHU/Kca
 JPf5VXC+JJSq+mHTQMOWMUs4KHOswEiHPtDVLArh8jCz5vjfTHU2D+mVFFNQAvyFrJKFRfnRigj
 EhCIzy3U5aQEzTA==
X-Developer-Key: i=j-luthra@ti.com; a=openpgp; fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a SoC-specific compatible string for TI's integration of this IP in
J7 and AM62 line of SoCs.

Tested-by: Julien Massot <julien.massot@collabora.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jai Luthra <j-luthra@ti.com>
---
 Documentation/devicetree/bindings/media/cdns,csi2rx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
index 30a335b10762..2008a47c0580 100644
--- a/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
+++ b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - starfive,jh7110-csi2rx
+          - ti,j721e-csi2rx
       - const: cdns,csi2rx
 
   reg:

-- 
2.42.0

