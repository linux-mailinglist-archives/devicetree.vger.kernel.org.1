Return-Path: <devicetree+bounces-48558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF523872839
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 21:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 655BB1F22A1B
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 20:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E557764A;
	Tue,  5 Mar 2024 20:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b="INun/ZIM"
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-245.mail.qq.com (out203-205-221-245.mail.qq.com [203.205.221.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E233BB3F
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 20:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.205.221.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709668997; cv=none; b=VS3hADOVl5IlmjwqbQrLggSfwN75foI6panYPgOHGhM9vk0bt+q/HpL2izFENz4Y1FZbEEmr4+jaiosoBk04rx6x4CH/0VHkdT+MNI0ctEPBWOnuzfLvpMvZBPnNlboO9rMrc/zciCYbEtys0JuWP76R/tzAKgNzq1mkU88Kuq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709668997; c=relaxed/simple;
	bh=iIg1m/HJGO+YBecXFqvZUlmsxmUTnWYkXWH5ivM16oA=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 MIME-Version; b=qX7AfNLzYsSFpI6Ja4Yq842lWHBrfftEamKzxoKr/wfd/6+0Kyy59Fj1lw13ZQS+fnvoSkWQigBxB2FMmeBhswpggRDQHC50wLEKFwT9+URH8hvBtOwz+KWHlR8h2ZZDh3imGPlwiDWXGp+UeHj215ikXqXpPFy7Bq3fei5JRdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name; spf=none smtp.mailfrom=cyyself.name; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=INun/ZIM; arc=none smtp.client-ip=203.205.221.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cyyself.name
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cyyself.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1709668992; bh=s7QEg+O5WzM5yI1q1lQPoUf0e90dpB5qxk5MpOdViLo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=INun/ZIMt4TbGyjUGH5JwtD3DeZwaxXE8riAbVub+EfcMaJFpSO0HhwXVAHPN7nA8
	 CqUj4Eq6/Hu0yq9C8kLPJ4GRy4FvmzHi0VTLoUXOya05svQWyXNNKWBYJp0ep7fsWn
	 GRTR4a9tEoBegdbsEmJOIvShC5OAV06Ale6KA93Y=
Received: from cyy-pc.lan ([240e:379:2267:e200:bd8:e8f9:fb59:de48])
	by newxmesmtplogicsvrsza1-0.qq.com (NewEsmtp) with SMTP
	id C898283; Wed, 06 Mar 2024 04:03:08 +0800
X-QQ-mid: xmsmtpt1709668988t2czpc9x1
Message-ID: <tencent_29708962B242A61B23F9460425B4951CDF09@qq.com>
X-QQ-XMAILINFO: MIAHdi1iQo+zH+lNGdhvPFsxOATruXiZIjA82Lx9SPNbe0K6xjb+VRmvJ7tiyR
	 UIiZzob6Q1mg5XKOX40FF7iwJnrEoQf/NlifMgAuZeV5CoHGwPxo2l3/skO2F8eyNm3Ti0O1D1VO
	 1ZpwluVwM80a7lA0LOOo4KvbzucJ+DfBucVjfCH7UbR/ttdCXESxsJY0PHi2Qn180wqotZb1iybe
	 qg+o9zdFVOMW/sPGdHLCSnsbKXeZ6reQR1qhgLS9i956kS4MqPXepZgReevnO3Jg44F60pRrZdNx
	 MNKmf/XAl5XUX7pRMq4qILf9ciKgRDHQ6WnrhisdUOcc0D6V/vYXv/L0FgYkSF7PwGainAeYehn+
	 UIChaKoQxltw6jvzjJmuZULRCD1y3LbzrpasUKzpyyi9F7jfdk0mBygXPmkeAnXgTirBsV1tebll
	 dyuAiNKkHMkPsURAhs2PLGfqJvMMqxvWOn4Qt9EY/bAX7qi7xzlAyHA9GECywNj5R4RxE81KzvwD
	 Evd2zFiJZdbnFgMtBeZ1JzH6b3Q9fk5cOHz/VUDEsgVpa3EvRTDdie9kVBXCADECEji7EArd+e5Z
	 TPG7j3Fprh6woLkm42OvlPtRJBSbIUSZcUk2j81MEtJTqjPQizTbMDyHo2OHmQmRhJ/Ps/IHDZ8H
	 JVTxsT+JSnQDRErSMRJPIkKxyrJzU/EyXKYkK2Le3L2KdCXRV24BGkrZUxrYOafRLGeL9p+R/A1s
	 +VyA/4XADQ5Tc0cWfrkXtiOugNvfbqVTEWEoZtcocWcLVtfpaQoA1L0QxvKtVk7/TBZWjFQM+qFI
	 vT68aqXfqkOo3NbCwmcUNQ5E9Qc5RSKwfT6qthxpN2dyNBchTAuVx8HCILQwMaNpSe3ucfLKryzU
	 FBSuIa/0C9wzjC0gH7xNYFzthAwLtQ+wCmFM0JzXvjx2rHr8GpF4U/JwcKzDl1TaVLplOkp+b9Op
	 BQxHlMVmShphzGP7K5tAvVVN83YJyqnr8KY3nfQn/Bpp4uYD5Ny5QsubhclrfTDYvrwU5bp+znYS
	 VGTCjyEke+9LMDJaPiiwdJUR1ZkmhgGvOCadV+084p1s7MlhgQfY2V1Nwode87kvKljaOOIDrH7n
	 k4PfvfRx+q5G8BeRg=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
From: Yangyu Chen <cyy@cyyself.name>
To: linux-riscv@lists.infradead.org
Cc: Conor Dooley <conor@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Guo Ren <guoren@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yangyu Chen <cyy@cyyself.name>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/7] dt-bindings: riscv: Add T-HEAD C908 compatible
Date: Wed,  6 Mar 2024 04:02:56 +0800
X-OQ-MSGID: <20240305200302.1093082-1-cyy@cyyself.name>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
References: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The thead,c908 is a RISC-V CPU core from T-HEAD Semiconductor which used
in Canaan Kendryte K230 SoC.

Signed-off-by: Yangyu Chen <cyy@cyyself.name>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 9d8670c00e3b..e853a7fcee8a 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -47,6 +47,7 @@ properties:
               - sifive,u74
               - sifive,u74-mc
               - thead,c906
+              - thead,c908
               - thead,c910
               - thead,c920
           - const: riscv
-- 
2.43.0


