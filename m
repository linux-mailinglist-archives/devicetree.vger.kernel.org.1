Return-Path: <devicetree+bounces-257736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNVDBxtqcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:54:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5F051BFB
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:54:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B46BD3E4C01
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F143D6479;
	Wed, 21 Jan 2026 05:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jt1LPo/6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XM7X81Re"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89AF03A0B06
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768974868; cv=none; b=jxJxIpowVddC64v3fxSf0LcOZx02uGYgMORBt5Zde8eJVcIZWt1kgA6kRuiaiZ9QFQsc5eNH1CGMhejY9zQNgf6uFirlobVtStz9ZH4ysu96pAantR/fVsinV5ZbD7m2/ujbOBJnffx/BiEij69l2tDPZ2TCLEk7/FEFcQBG40U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768974868; c=relaxed/simple;
	bh=DNJDXPsUt1J6+u92cF2N8JlAKwnB9iuDYqHcttTUOfw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=lD3rZIxqG3dwUlEYIVHZ0JZg4rbBmioAdzHUKop63YAd6hCfNZY26KcZlz7mOkNhLlqjSWuMFVOSu1GqXNtKtbi7w93XdBsGszQ/FiU6K0+ZMYURko9lIObp39AT0zZXtIPsBJP9DmkBdN3i3cRPLjsW2weZCJbznm+caoYF6kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jt1LPo/6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XM7X81Re; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L372iU3991329
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=i6pPJkWRpzv2QmUHeIdBG2n9cDFr3LIvlRj
	x88PG7Hc=; b=Jt1LPo/6GqID9N4RIA0mWo/j9ZD9Poyk88nQpaBlfz5auBymK+D
	b8jFsABx5Y1J2nl6bZ1rKwUrh8URnBSdDpRX01qNhzsEXHOGc/kUDG7K184I3xNl
	QsFaErXX5JAC8sYcz18pjrxo4IYT3ZqOg0CbZrhEn4BvbcZQ/C6toqUqWc58nM4v
	Q/tLejPQIcfvpwPmzeLraoyUJXvDvvJWKtKeCf7wC3G8eCHNpBkYuU+HbO9yDoEH
	vLxDeK99Id+k2xJTuhwZ7gql4cPiwXc0BAE4KrCxUUKhirYn3sI8W/rdVmcwangp
	bAWCemOO7han5bR/4MdnEzxkilD+y5XnowA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm40kts-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f39ad0d82so11522007b3a.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 21:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768974865; x=1769579665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i6pPJkWRpzv2QmUHeIdBG2n9cDFr3LIvlRjx88PG7Hc=;
        b=XM7X81Rezj1Qhge5TJXuWhP+YNfDa7wZ7G8Zu7wNTxhhcAFQP25BDU3/K4pgi5Nj4R
         3v87wV3aYusFTepG7s6MO+X+KmWayrcsr888yPFps/fF0uFJdJhrT06jXihO5iROBTUL
         dUIxVO1SSaaXsmaTkE5H8SGe+KcHGj+ok8z+CMLeEPv/WEiCMPXATUuxHAt+ihnTTz8U
         5kZGN6fXCnTle8hgOHRpOnVMuFJOyChNX4UjKn64yTVAYcmBXZyMuj7XEYFGMClfOhSX
         Z26ceZU7Y4An0zRDlf0UjEUWnbr6satP7Zd8yj14YccvkSgbpK7BJHcJ3p07OR4w3//s
         5NWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768974865; x=1769579665;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6pPJkWRpzv2QmUHeIdBG2n9cDFr3LIvlRjx88PG7Hc=;
        b=jYaBFgPO2ZpS4IrAyKZgECqY/DBnadDdQ9ggOz9CRCqtmqu4soEm+t1edhqzLaHn5i
         ie1r1DfXyYA+GYSxDEuXT3cbpavSEvbT1Zm19gRa9ax83NfqsUVHXxcQph/+ATp4XF3X
         o5E9NUMVRR8kEGZCz0jgdyD6+7R7mPH1778qqgtlSNJUQ2PY+US1DSL6NDtMwxLkKmDs
         9YK2fA8ojedZs1KUkCgyUxWd34u4ZM7D+Re4N4fmJnQzr94TokKnYCJNVstFlKi5+4V4
         +XjrbkvAI4o9hJERXRpFUgm/0iRNFfei9yY220JJhJvgN2vj2Otx3u+/QQGLApBx46Ca
         FjZA==
X-Forwarded-Encrypted: i=1; AJvYcCUDGdcKt6DKWOkJ1hAWQGyKQM0SnDTe6CFG0vC8VB1yWHzlqQPIorl6J6WR9c46iPTZNz+ijIel4JSo@vger.kernel.org
X-Gm-Message-State: AOJu0YyER6zG9wRCoMl9kpE2nC+xxiNlruuS+mSSHCuL8RyfRCQdrU9H
	atZ7ji4wyLICuG3MUrLWyviQ7ZIv0qdlicvx1sbcUvJYwcNPcYjMVuxrNghnvBbmEJLxHreKc/n
	voZqTUF3OJIF1JBvonuQReZg7du6Z7h4JGZe7TALWj5DpsilIwu2YGIWRY+3iTyl/
X-Gm-Gg: AZuq6aIb0I9FswlaZ//h25yAvU5Cz3wHqgZakxVYaWOzbBhNJfbn5x5UQElqcvv33Nz
	MxwCBvR0CLFfwS2eW7lOmU1CJSVzyRVcZCGEd4a+zk/84l2mttj2+9vgfw4KDmxlw3WnKHk+3yD
	9ud3+CljOZwM/8aejg2bdRkB0XWMMVsFeon9kGhSIttN+rMHD7qYTx+84WR/0eofzZkvoY1PERt
	a4lpbvNLjftIu/xwM3dpA1ti3KE7zOtkWS3yjyIQDQDe1uY9KsO9rmVEVcZ5fBIO8ckNSDGiKe5
	QXUkUqYqoDhb6F/dgUom5dLdgH2Hd7PfygVALvFIEH+WOQs9sJsunp5XE8761UR/Hbg/rgU8pjX
	yWYw7TzIMQmdbria3XEQKg3+c5enupVDxJlpBimw0sNxM
X-Received: by 2002:a05:6a00:8016:b0:81f:4ea7:91db with SMTP id d2e1a72fcca58-81fa01b95d6mr15826224b3a.26.1768974864892;
        Tue, 20 Jan 2026 21:54:24 -0800 (PST)
X-Received: by 2002:a05:6a00:8016:b0:81f:4ea7:91db with SMTP id d2e1a72fcca58-81fa01b95d6mr15826192b3a.26.1768974864282;
        Tue, 20 Jan 2026 21:54:24 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1278061sm13831927b3a.44.2026.01.20.21.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 21:54:24 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v6 0/3]  of: parsing of multi #{iommu,msi}-cells in maps
Date: Wed, 21 Jan 2026 11:23:57 +0530
Message-Id: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=69706a11 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8
 a=bPDH9HW4QdDYPu8zaOwA:9 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: tp-PW-kAu9EFFg3sEb9tXekDvlJCAuxh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA0NiBTYWx0ZWRfX1PL3036iMqZ2
 VIeWWZWZhXQry5FzA8ZGzA/wTj1jOjRYT4voO2vH8Sb9nPp6v+hvTDXVmSd6g0ELojcNL1G9kmK
 m6x7oBCKtobt78zyzsWXrj9H4tmgZ141DZ59WXJEi98m+nWOXfcaoVUuufm7djxKVTlbVWtpGoB
 FwK3SHqYoegwESmQBXh1T5oT9DA0PeT0lhiYWD8PHj61/Wd1o/D1e3BLKQkoXITdaMjtgSMreyf
 DycOhkmcIvwaY/lt6pY49KhewP/2/iz6sKq4FACmtDXO5G2ZnhwFAdUDedtN5A6hkivZ2vetULm
 tuxOB3+KQ7cEkiZnqaveDmB8YSFYUNFdLf0hhxmJxE/kHrR1Hb3SZ/QYzpKNfBFf32FC6c2mtU5
 8ziMIWR4zhK7SvxpLdOAw7Ruv5HMb62CgVcvWtE8YZQMPfdPds5VrOKA+4Tk5e75eBzaC5yyvvF
 WiTTKRfQDXiiavWmfbg==
X-Proofpoint-ORIG-GUID: tp-PW-kAu9EFFg3sEb9tXekDvlJCAuxh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210046
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257736-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BA5F051BFB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

The motivation for this patchset originates from the multi-map use case
described in V1, which will be addressed in a subsequent series once the
current fixes for iommu-cell handling are concluded.

These changes have been tested on QEMU for the arm64 architecture. We
plan to perform more extensive testing based on community feedback.

[1] https://lore.kernel.org/all/20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com/

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

 drivers/cdx/cdx_msi.c                    |   5 +-
 drivers/iommu/of_iommu.c                 |  12 +-
 drivers/irqchip/irq-gic-its-msi-parent.c |   2 +-
 drivers/of/base.c                        | 146 +++++++++++++++++------
 drivers/of/irq.c                         |   3 +-
 drivers/pci/controller/dwc/pci-imx6.c    |  14 ++-
 drivers/pci/controller/pcie-apple.c      |   5 +-
 drivers/xen/grant-dma-ops.c              |  21 ++--
 include/linux/of.h                       |  44 ++++++-
 9 files changed, 179 insertions(+), 73 deletions(-)

-- 
2.34.1


