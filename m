Return-Path: <devicetree+bounces-13935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F4F7E168E
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 255FCB20EE4
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 20:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50E18156E0;
	Sun,  5 Nov 2023 20:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mai.rs header.i=@mai.rs header.b="ShI1mbae";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="a3qAcJaN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF82A1773D
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 20:48:18 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC58E1;
	Sun,  5 Nov 2023 12:48:17 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id EA5F55C00D8;
	Sun,  5 Nov 2023 15:48:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 05 Nov 2023 15:48:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mai.rs; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699217296; x=
	1699303696; bh=80TY+AmD8+fXcnPnfddIxJ7QVb/Un0cY9LHkEYEImdI=; b=S
	hI1mbael042HlvOYmFd7CjdXHnraVii7kw02Nt+HEC3MpOxOeWwICwq88dSZm5Ct
	Lh/mjZIAe30Lu+AhUeIG8zIQTrXyVVUVoLjw56YhvQPe5hdb9xkDx6jPsJNHiziE
	yvjooImkE4ouw91aQvs4lMgJvCDma6O91yD+qfiSErLYgnAapbh2gdh87hDwr+gT
	RYDgD4r5GMV9o4HWvYCMOIREh1g4ULBuU5gs7uzLTL7Q+5aCcddGCbxd49zgYBDu
	E9CnhTQPchrIheMz7EmYEe8fv7UijVzKnW4TzVVKBiF4JNNaNFwwXiwrJGeILvij
	/u9wxLl4qo+cCqvzfnckg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1699217296; x=1699303696; bh=8
	0TY+AmD8+fXcnPnfddIxJ7QVb/Un0cY9LHkEYEImdI=; b=a3qAcJaNjcxPm0LOc
	XV0/ZFXDa3ExlBWDVDXRWMrUqRSXENTCaeqe7o2onMDpHtPHb+XccAdzZWBJYoKP
	kfplIp3RSTYuNuGG1EOm+/97lzrE5VoyQrWUn+GcHmLRt9LZVkvM4ornKS3pIWMF
	970SCjv8n45Q5yUr+aXcbFuwewlRwl/Cdqmb4LhhN9aPKYSUuIdwWPJOnUL7E4GW
	oi9VAq2EKHNJvGcJGN2F4iMUu3PSxURCjOurvYRWRDlO1Kl57/Kw2dKh3WjOD2W+
	E4/RWAbigx56r4unjR07XlojMTLykZQAQOYx9bcqa6tjQQClh4Y2COkoEIDp40UC
	sIoqw==
X-ME-Sender: <xms:kP9HZb-jgBOipdAoWX7vYDchc_UxHP_k7L4VXHHGnINJ2o41K3esQA>
    <xme:kP9HZXtu7b6rHqWArGbHp3IuLZ-UnxDFVgub_zsgew4YzWWS6dkN2A1mJMeT6X1fI
    8XhV8H9J5bRwV3FfA>
X-ME-Received: <xmr:kP9HZZDkHhfyjmmYrAdhqH6q1WaNFpntC0F6cgllGhugkRrVGlnyrsMACb_Al20>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduvddgudegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepuehrhigr
    nhhtucforghirhhsuceosghrhigrnhhtsehmrghirdhrsheqnecuggftrfgrthhtvghrnh
    epvdegkeekkeehffehveeltdekvdfhffejuefgjeelfeefgffgleekheeffefggeefnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghrhigrnh
    htsehmrghirdhrsh
X-ME-Proxy: <xmx:kP9HZXcdJHM6DE6R1zGFuRdZNJJeb98P2-bRJnVIdli4fKNQ55vCRQ>
    <xmx:kP9HZQM60RBaRQthqBqVMYFk_vS9nozhrgnNWSumgVXjQqDEBnmyBw>
    <xmx:kP9HZZkB37jqTZumoG_rrKb_RVsZwOyHylW2GXWdCtzk15cqRefQsA>
    <xmx:kP9HZRFTVuH6WSSvX7B6c4EtWTMSBXenBjJuuiZC7DZtUOdQlAjfFg>
Feedback-ID: i891b436e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Nov 2023 15:48:15 -0500 (EST)
From: Bryant Mairs <bryant@mai.rs>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH 7/7] ARM: dts: qcom: apq8026-samsung-milletwifi: Enable modem
Date: Sun,  5 Nov 2023 21:46:22 +0100
Message-ID: <20231105204759.37107-8-bryant@mai.rs>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231105204759.37107-1-bryant@mai.rs>
References: <20231105204759.37107-1-bryant@mai.rs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the modem hardware for milletwifi, which is actually only the GPS
functionality.

Signed-off-by: Bryant Mairs <bryant@mai.rs>
---
 arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
index 57f50af487c1..b6750cf850f0 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
@@ -310,6 +310,13 @@ touchscreen@48 {
 	};
 };
 
+&modem {
+	mx-supply = <&pm8226_l3>;
+	pll-supply = <&pm8226_l8>;
+
+	status = "okay";
+};
+
 &pronto {
 	vddmx-supply = <&pm8226_l3>;
 	vddpx-supply = <&pm8226_l6>;
-- 
2.41.0


