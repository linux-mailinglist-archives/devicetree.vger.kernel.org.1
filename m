Return-Path: <devicetree+bounces-264599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MyMXGZsWjGnegQAAu9opvQ
	(envelope-from <devicetree+bounces-264599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:41:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5464121617
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:41:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 756D63042457
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D1E34B1A8;
	Wed, 11 Feb 2026 05:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KBqZYwxD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S/Aj3P9y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8A5336ECC
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788504; cv=none; b=LnHqXxgLCM3yHWK/iTrY4zyVn0hFlLlOLN20RhBHFUVbXqbL7dbta/W9NJx7Q2u889i5PeRS1yNwAU+l2V2gcAgB7gfecps4Isy5/OixRoAqemW2pzxoJ6iuQBnaI8+WoIivqhcrHgGa/EjFvhEuTwQ9S+E8nW/5G4q/g1S4PgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788504; c=relaxed/simple;
	bh=8Ascd7qDlVARDssM5L0tNXQ8Bm0xuOvsstgFiKGjAiQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YxyDEeJ769/jk/qWgYylN0V9iuZQCCl0uHS0t7Kd+6OF9+smWuslfrtnO0T/eR6yiHno8CLeOB0A84m2sf0O9ZDWQ7Ek7f9n4C4kdn+tcE94QjwBlC1YAIytE/OH5+X4BPq5Qyal/u67xnaLQOE5Si/O5TgOXPcxBMKdPHYiErc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KBqZYwxD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S/Aj3P9y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B5FZi54013749
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+O
	HjnRbIZM=; b=KBqZYwxDlEuOj5b/TTcFCiY0fFIO/zLdtc0VLe3VmPoUCzn1ntb
	/EqqMhZ+UVWIoXjttedBkm6YHRCMpXrKGOO2KwU8YB/9WIAevhv9oHPWdeuI6PYH
	Z9oH4V4X44CIJ9RfM6RBmZ70RxajaEdNIkFCq6lt+UGKIDzf0k6uUJ+OTF7zT2Ev
	xFAPNcCGUbkCYlF2tuRkD6hW+gzg3aFY5gkTYJW7Ce1saQV0mxPIbaIJk4KiMnN3
	8q/V5lU0d30/svGIxyAvqHyvWMCWP8V15pvd2I6Jv2mVD+SI9u1qd2HZ/aFzhQVK
	H0QUhFlUSYlLegsjJsVAdldXFGbz6nuQhFw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8aad9rsa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a943e214daso157673155ad.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770788501; x=1771393301; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+OHjnRbIZM=;
        b=S/Aj3P9y/o8V1qzkYOavLEP5uBO5cZvuuRxDPa5cZ7p4etDG//LU4LGc6CETOKg4QZ
         B52E8Im87osXG3FujWHEBNbM7hA68ZYcp0wQb+IYIsWHCDNYV1plzTziJhtGcjQ3a5aP
         +x2oCUMHJv7nyH/In9aWQPLvCVK2XSKV8oJbTQJKsfzMmyaup6xQjXmMo3cVDMKQpFCV
         qr0io3K2I5byLiMClUyz72omuuY8LKfduFa41UC4vksXmVGKlGXnTzDBbWJ12/v9jmGH
         0NQ46jdLEhELOAGQRj1aQHsTLxHC/2GQ2fcscPX0UdXZKk8qMi6qS48tY/U7kUeqJnsw
         d5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770788501; x=1771393301;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuCQoAKdi3KuRHJyXKcVDZr2MMU4Vod0X+OHjnRbIZM=;
        b=nUFQpBVexzpNOeZmAbAqfE3XWQZYz3EmsrAaBBl83iINuyAfM72lqHAxQ4cspjzH2M
         mprxGDwu3zlYZOtVFLqT9l4jRCcjADQ5YJSP6r/C7OF+CiRfqazYJnc2DLPmAY5AMkaQ
         euzI9gJFx3Xpp9fwXaUlEqHm620Mk8+HioQuVVNdwySmP2qSkHgVKfldOCU9WCnTKqT+
         +GOvVlkKTCCDLMXfNLETNM6/U+6QstVkkvTrgx3c8lJDIgbVkXGAvECoYv9LR18LxTj6
         keTYuGOpuREKbxSwDFXeRWhE+GSm8Kdy6ZP4jitSbCfKeRqVJWn464X4HC0lcporfmYY
         x8gw==
X-Forwarded-Encrypted: i=1; AJvYcCWpYglGzoxzgUwAbtdMwHx+KxNF5l5ELjxiThOyW8dW3eKzpVLq0PmUQ7ySTgHLByv/YbJtMX1YHudD@vger.kernel.org
X-Gm-Message-State: AOJu0YwLwMvPuXXPL5ByRgX2UlVV46BFQPurtnzz02q1zjd5sufrLaaT
	ybL2amvV558ZKb6nUaLhj2cBiWeWw/1i4tTe3ug2cYjvFdkv2q14oJBNORD6I5bawdzZrVJmSht
	dtpSH5e2F8G4rDWmdK2FC8qRuSmoMdRJaq5eAP9vBAYliPwXpIOsBMKMpFzhhbXiK
X-Gm-Gg: AZuq6aJmfGv72DrFmKa6iRJeStfNFQpTysdj07MEtivVrCgl32H7W1MPQ/f2B7MYIJT
	ZpycJdlOt/spxvMu9llPbIgjvEOuELrS2vtGCf2wXyLeDqZi1v+crSjsjpzvKVJVtk+sWfrDVDD
	K8fTPkcely/RHpgTlSx9js0tIRbsnhQ//KwbVkbsHHGumpNrwpc3lX7SVL7cZJmqVolYfDIdsf2
	LFHZ1OEXuHheWb4EiIKZM+cfYn789T+qLb/85XEtuVW9mWCQf+ySAVqnEbDrpyUr7h9XEtRKBNl
	+DTFtsijD7DylfjyAywxwiW0Sfx/IjoNtjW4i24jRXTPKNL9kNDckfL19PoyZtLj6roirSbRNOj
	LYoInx6+A52FWgVlxsri/jPAx2df5DWJKfpKICHpjDNjif6wEZ8Ed9wFf
X-Received: by 2002:a17:902:ccca:b0:2a9:411a:c5c6 with SMTP id d9443c01a7336-2ab2ac85094mr10787385ad.39.1770788500891;
        Tue, 10 Feb 2026 21:41:40 -0800 (PST)
X-Received: by 2002:a17:902:ccca:b0:2a9:411a:c5c6 with SMTP id d9443c01a7336-2ab2ac85094mr10787095ad.39.1770788500379;
        Tue, 10 Feb 2026 21:41:40 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2986f0adsm9932875ad.26.2026.02.10.21.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 21:41:40 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v8 0/3] of: parsing of multi #{iommu,msi}-cells in maps
Date: Wed, 11 Feb 2026 11:10:30 +0530
Message-Id: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: tGJcUbTjHe3KDqRHANV4PSt2d5qL-1x0
X-Proofpoint-GUID: tGJcUbTjHe3KDqRHANV4PSt2d5qL-1x0
X-Authority-Analysis: v=2.4 cv=OoVCCi/t c=1 sm=1 tr=0 ts=698c1695 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8 a=bPDH9HW4QdDYPu8zaOwA:9
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0NCBTYWx0ZWRfX0bsD/ZQSq8QF
 mFHNE4MYw/p9oEUpjDsY0Bno9IVX6okNJJfdgdBmOUWbakftJQgGBVCJJtmA4MaDVrJqe5Ez1Y3
 ma/hnbLvgEdi4TP6F4K0HlNP7g4VfJmp0Rh3t8U3/bq8BAbYDzDmWoD+DDPxa3ImjKZlGgScqCs
 4/p7eLUznHtGd4ZiHpyQvDFo+2bHP6xUOx9c815oZsuU0wXyrEZZvYHBJE7IcIJPFGOKdgAjzzG
 tDthGDzGxd0L66F8OyR9R7ryKCjMXsfMWoExxevcelYsDSds7DGOYHvIQm6jnTrhIzrJDSEZbmg
 8421my6sKPyUH3fdsAuxC8OO1uPZXCMD2OdQalNRBzw/6iWE5iyriWnEb3UYEJbcIJvftPYE7ar
 YwwobylRGEIXJcmZTmBJp9nLt1JPqJdxuR2J+5deIJgesnKDEcOqd9XVkyOMwh93eHWeErSKONN
 UeYQK43TQ7xAlJhMIwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602110044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264599-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C5464121617
X-Rspamd-Action: no action

So far our parsing of {iommu,msi}-map properites has always blindly
assumed that the output specifiers will always have exactly 1 cell.
This typically does happen to be the case, but is not actually enforced
(and the PCI msi-map binding even explicitly states support for 0 or 1
cells) - as a result we've now ended up with dodgy DTs out in the field
which depend on this behaviour to map a 1-cell specifier for a 2-cell
provider, despite that being bogus per the bindings themselves.

Since there is some potential use[1] in being able to map at least
single input IDs to multi-cell output specifiers (and properly support
0-cell outputs as well), add support for properly parsing and using the
target nodes' #cells values, albeit with the unfortunate complication of
still having to work around expectations of the old behaviour too.
							-- Robin.

Unlike single #{}-cell, it is complex to establish a linear relation
between input 'id' and output specifier for multi-cell properties, thus
it is always expected that len never going to be > 1. 

These changes have been tested on QEMU for the arm64 architecture.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

V8:
  Removed mentions of of_map_args from commit message to match code.

  Link to V7:
  https://lore.kernel.org/all/20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com/

V7:
  Removed of_map_id_args structure and replaced it with of_phandle_args as
  suggested by Dmitry.

  Link to V6:
  https://lore.kernel.org/all/20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com/

V6:
  Fixed build error reported by kernel test bot.

  Link to V5:
  https://lore.kernel.org/all/20260118181125.1436036-1-vijayanand.jitta@oss.qualcomm.com/

V5:
  Fixed Build Warnings.
  Raised PR for iommu-map dtschema:
  https://github.com/devicetree-org/dt-schema/pull/184

  Link to V4:
  https://lore.kernel.org/all/20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com/

V4:
  1) Added Reviewed-by tag.
  2) Resolved warnings reported by kernel test bot, minor code
  reorganization.

  Link to V3:
  https://lore.kernel.org/all/20251221213602.2413124-1-vijayanand.jitta@oss.qualcomm.com/

V3:
  1) Added Reviewed-by tag.
  2) Updated of_map_id_args struct as a wrapper to of_phandle_args and
  added comment description as suggested by Rob Herring.

  Link to V2:
  https://lore.kernel.org/all/20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com/

V2:
  1) Incorporated the patches from Robin that does the clean implementation.
  2) Dropped the patches the were adding multi-map support from this series
  as suggested.

V1:
 https://lore.kernel.org/all/cover.1762235099.git.charan.kalla@oss.qualcomm.com/

RFC:
 https://lore.kernel.org/all/20250928171718.436440-1-charan.kalla@oss.qualcomm.com/#r

Charan Teja Kalla (1):
  of: factor arguments passed to of_map_id() into a struct

Robin Murphy (2):
  of: Add convenience wrappers for of_map_id()
  of: Respect #{iommu,msi}-cells in maps

 drivers/cdx/cdx_msi.c                    |   3 +-
 drivers/iommu/of_iommu.c                 |   6 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   2 +-
 drivers/of/base.c                        | 148 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  12 +-
 drivers/pci/controller/pcie-apple.c      |   5 +-
 drivers/xen/grant-dma-ops.c              |   3 +-
 include/linux/of.h                       |  33 ++++-
 9 files changed, 152 insertions(+), 63 deletions(-)

-- 
2.34.1


