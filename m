Return-Path: <devicetree+bounces-260342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0J7FFlzyeWns1AEAu9opvQ
	(envelope-from <devicetree+bounces-260342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:26:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A6FA052E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F5DC301324B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5AA34A3D0;
	Wed, 28 Jan 2026 11:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aya6HC0n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kEiQLwCA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3912E344DAA
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599477; cv=none; b=ArLXaUfE1M6DLhKL6HFkQ3Tgq6tfoMkzrZHwYplQQ17J1UA2UqM5Yy5Mc0B8S7Gx7onlnShCIspLz8YiimELgrSholWPplcyJcICKIiXVFpwAYPPhT9Zln3VSmYV1j/wuDkDdMjCEFQmmiYwno4r7AWihwJAcu7opEwUasB1NwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599477; c=relaxed/simple;
	bh=PvZJ4o+MXxT6VvA1LMdZh9G77rD/QyjUrCiUVnPILhw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nDC7b2XL3yxfB0jCQdVvMuIwtOoKaW0I3nvLWXumNRE7cTN7weIzorutvYHGZwgJMPzEuQa0gYqeYBD+1egvo0+7/sFbhoKP9aXFCGvpyUxwX5BrdBvuyPf8p7eNXgxFs2IPmHP7BzGVIId+khUtNhgAh9okWa/Z89r4eorLsYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aya6HC0n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kEiQLwCA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S91o3H3442245
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=QpUKCDM7vXwldMA3bcTxYPWXkWdVlot5p2u
	k9PfTTwU=; b=Aya6HC0nQ4m/N2/IYzsOBd9CalnXGfumnGs+tYyZdQsVLf1dlku
	Fz3iq080TJ91ML9p8VITVKnknumyDqdpntaQYOaXOdUtGQL7ywOqVJptbD5MlMeh
	6el0tiscQ0g54/GIVrbCqksLTaAGQNddo91ribdKY8gjDwL+kej151xFUVlQJ1j9
	CfTv5zx1WETRyJgkk83eqHftsKQOrR6IDPtr8WZzHtHMXZaysDrze7su2OqbBnLm
	2QMjRunzG1Lqa3rfg5n3LdRUsZ6mEMuktHU31iJn7w4C7JXSMowbbXG+8+SJl8X/
	VXP0rrumaj4rl1iL/+6zaxdBjQM3fV8HIcg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byanahekr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:24:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a351686c17so60144225ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 03:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769599474; x=1770204274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QpUKCDM7vXwldMA3bcTxYPWXkWdVlot5p2uk9PfTTwU=;
        b=kEiQLwCAbQXi61L44qWq5JcSxF/IPtAONtYS15BaOe/oDbXPf0dLatpvyiANoX+hin
         dEReEorLiTGk/nhr0rfAUbRvfRu2LeQiTjkqacEGUp5RBS5zIdHKscRM/Y5RgwTrMP2x
         x0liUu+6R5ehduG+9GcIr4MWHeCU0emZNj3qHMhVj6Io9C5wYSjNf3MpuZ5iEfiX1dV2
         m8R5Tmt0kpD8nevCJk+XzUSsXct6bOhrPDRs/D2VUkjey9lh9IinL2HZvlzscoI60SJQ
         4S0SK991lh5VX09Rfgjd15az4SQayViCf0VGDu5ga3aMIBhABxqfD7UVC9EHVM6mxB21
         S5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769599474; x=1770204274;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpUKCDM7vXwldMA3bcTxYPWXkWdVlot5p2uk9PfTTwU=;
        b=G+1WxWNI3D72bVvGp0TooQsCLL1b9+URgYT9vbXasvgXQBq3THL9bcBNF5uMSzxVdD
         NHxiGVPn8Sn0MttmrSnQep4xEk+B761Z8jTWWt+PNoyGf5bqIRP+UYOy+bYJLyxKJSYK
         CX2ZLGEKSE3MNnde+mxsRWjNSE66Hd60d98SsN8oQBqzt5vl2YOlJs3Hf5DSAnUBzM8z
         G1NQF91MtQEd9MpKmrNv8Fb5PTecopaP3wu3TGR0xDxByu1UBg0F58vCnEn8EY5w7kte
         F+B0Ga89CovrK94VrMj+XW48zf2XzdUz7lHUigvUQh9vOkoGVtPpoQKSp8TFQI53QOJG
         GsXg==
X-Forwarded-Encrypted: i=1; AJvYcCW6f8CVQxCxGAaTmBxVvLStDoKkEk4xM7CbYhTgi8yBK2ZfkVfvha+BMCbpREAJbpcWXzyxK3iEskOT@vger.kernel.org
X-Gm-Message-State: AOJu0YwGV6OeKkO11PEXcqCJ0nVKtLzeZqoMKgcL/xnVSbGvlZHbt2Kg
	aVW4bLYW/MtBb/1VCcjvca1p1nytU8BgYVJ41apDH6xWY7lhnHuK+H6wICv6RUy1p5bjYRI811W
	zl8nb2QgUR2wVIRdS3j+g+9ymCgr9XR5QsDnn4ds7tgXw3r943itId8Wdd0XOs3vT
X-Gm-Gg: AZuq6aI3nqCHEvGrXH0a+nmKkPa8yndl3ODb97C/pOuHBeuv5OqPbR3qROBcwgOyws3
	hXElFM8qf5OlVBvopdR7a+YgYdOiCUj5CtGq68yXF2uGg5M25+rdguc1lB/ZuK8fEvkX6R4V+J/
	OIfWIwgfmd8FTIJpXJ7gRGDVz0250VzOmo8pE/mmr1DTg+6OnFZbzpA0rRZWLirkAY24alsR+Ln
	/6KY++Pdv+4d8K0d6HNapegnIe+vuy9xDeRXZxgUQBG3FfskSld1KECXsZjM62eFzNGxqWQsrMP
	ZTNyx4nlt2CIsufWykJrMV4xSx7dBf0PgH96fRPvbQPVyTIG4FX/s5h/+mdAx+iYQX1LhQKApnL
	YV+wvmh9DbyfBYoPxMep3b5EaKh0qARr3fLKrPGNpt/4N
X-Received: by 2002:a17:903:2344:b0:2a7:cecb:9844 with SMTP id d9443c01a7336-2a870e1bbdbmr42637315ad.48.1769599473513;
        Wed, 28 Jan 2026 03:24:33 -0800 (PST)
X-Received: by 2002:a17:903:2344:b0:2a7:cecb:9844 with SMTP id d9443c01a7336-2a870e1bbdbmr42637135ad.48.1769599472950;
        Wed, 28 Jan 2026 03:24:32 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c40a8sm21984605ad.51.2026.01.28.03.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 03:24:32 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
To: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, jishnu.prakash@oss.qualcomm.com,
        quic_kotarake@quicinc.com, neil.armstrong@linaro.org,
        stephan.gerhold@linaro.org
Subject: [PATCH V9 0/4] Add support for QCOM SPMI PMIC5 Gen3 ADC
Date: Wed, 28 Jan 2026 16:54:16 +0530
Message-Id: <20260128112420.695518-1-jishnu.prakash@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ka6WqeChKdECq_VqPoX2N1iR0Qc-7_eY
X-Proofpoint-ORIG-GUID: ka6WqeChKdECq_VqPoX2N1iR0Qc-7_eY
X-Authority-Analysis: v=2.4 cv=N58k1m9B c=1 sm=1 tr=0 ts=6979f1f2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=XccleKrqIk_kMzO7r2MA:9
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA5MyBTYWx0ZWRfX1usEecoCc4y3
 Fu24uV1M4l3XUWn4fVkDuIVFtaU7Qf2MU+kGzu5kRh9p3+vZDz9mdlx0PxTBu6BarKLeZSqmHN4
 LzK225jgowhhzOSv38SBwlo7IF4FGLJQOji7OO9US/tTQuMeR1wqDjKGQs5ACiAYa9bULRcLXhT
 NJvk1ypiRzvyx2QhrJlDwUS3N7g3SlUyaV2fYZ9eWsFRHNc3Ri9w6oBQuPfizYyRLwGULODy1IR
 OuKyxxPWjlmqB45D2opmFvqKY0hITpiAx793hTI2QgXXzfUBdx4fkc/VGf6sSmboin1+/bexbcY
 32OTSuv6D5XaIkuNgWvJiQ+LmWflf4n+Qh4xNspOXRZjUlHRb8g7IFru9pt3ENF0bjC4x6a4qMU
 ikrnXdvVpWObz6gOeF0FWypY2qGdtSrh4ZGqIq0SG2uGNel9SXvOLFTGee/Pl0yOgSaxqgJBZGX
 4eGt24xJgEAnRQa+NyA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-260342-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[31];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 01A6FA052E
X-Rspamd-Action: no action

PMIC5 Gen3 has a similar ADC architecture to that on PMIC5 Gen2,
with all SW communication to ADC going through PMK8550 which
communicates with other PMICs through PBS. The major difference is
that the register interface used here is that of an SDAM present on
PMK8550, rather than a dedicated ADC peripheral. There may be more than one
SDAM used for ADC5 Gen3. Each ADC SDAM has eight channels, each of which may
be used for either immediate reads (same functionality as previous PMIC5 and
PMIC5 Gen2 ADC peripherals) or recurring measurements (same as PMIC5 and PMIC5
Gen2 ADC_TM functionality). In this case, we have VADC and ADC_TM functionality
combined into the same module.

Patch 1 splits out the common ADC channel properties used on older
VADC devices, which would also be reused on ADC5 Gen3, into a common 
binding file, to be referenced in Gen3 and other ADC binding files.

Patch 2 adds bindings for ADC5 Gen3 peripheral.

Patch 3 adds the main driver for ADC5 Gen3.

Patch 4 adds the auxiliary thermal driver which supports the ADC_TM
functionality of ADC5 Gen3.

Changes since v8:
- Collected Reviewed-by tag from Krzysztof on patch 2.
- Dropped the common module (drivers/iio/adc/qcom-adc5-gen3-common.c) as suggested
  by Dmitry.
- Made changes in patches 3 and 4 to simplify auxiliary device structure to use
  module_auxiliary_driver() as requested by Dmitry.
- Updated header files included in all newly added files to follow IWYU
  (include-what-you-use) principles as requested by Jonathan.
- Addressed all remaining comments from Jonathan in patches 3 and 4, for
  refactoring some code.
- More details about all changes are present in per-patch change logs.
- Link to v8: https://lore.kernel.org/all/20251127134036.209905-1-jishnu.prakash@oss.qualcomm.com/

Changes since v7:
- Based on a discussion with Krzysztof concluded here: 
  https://lore.kernel.org/all/d10e2eea-4b86-4e1a-b7a0-54c55907a605@oss.qualcomm.com/,
  patch 1 in the previous series is updated to move ADC header files from binding to
  devicetree folders, as they contain HW constants, not exactly bindings.
  Earlier in series v7, patches 3 (Gen3 binding) and 4 (driver) were dependent on
  patch 1, as it updated the location of include/dt-bindings/iio/qcom,spmi-vadc.h,
  which was used in patches 3 and 4 for Gen3 channel macros. In v8, these macros
  will be added in other new files, so the former patch 1 will now be a standalone
  change separate from this series, as the other patches here are no longer
  dependent on it.
- Patches 2/3/4/5 of v7 are now patches 1/2/3/4 in v8. Below comments refer to
  v7 patch numbers.
- Updated description of `reg` property in patch 2 to completely drop mentions of binding
  file paths, to simplify it and avoid any dependencies with patch 1.
- Dropped all ADC channel macro definitions from patch 3, updated binding example
  correspondingly and fixed formatting inconsistancies in property names, to address
  Krzysztof's comments.
- Addressed all comments from Jonathan in driver patches 4 and 5, for fixing formatting
  and refactoring some code.
- In patch 4, added ADC5 Gen3 channel macros in qcom-adc5-gen3-common.h, for use in main
  driver file. Also added a check to fail probe in case ADC channel value obtained
  from devicetree is not among list of supported channels.
- More details about all changes are present in per-patch change logs.
- Link to v7: https://lore.kernel.org/all/20250826083657.4005727-1-jishnu.prakash@oss.qualcomm.com/

Changes since v6:
- Collected Acked-by tags from Jonathan on patches 1, 2 and 3.
- Addressed Neil's comment in patch 3.
- Updated copyright to yearless one in newly added files, following new internal guidelines.
- Addressed all comments from Jonathan on patches 4 and 5 (most importantly for updating
  auxiliary device cleanup handling to fix memory freeing issues).
- More details about all changes are present in per-patch change logs.
- Link to v6: https://lore.kernel.org/all/20250509110959.3384306-1-jishnu.prakash@oss.qualcomm.com/

Changes since v5:
- Collected Reviewed-by tag from Krzysztof on patch 2.
- Addressed all comments from Krzysztof and Jonathan on patch 3.
- Addressed all comments from Jonathan on patches 4 and 5.
- More details about all changes are present in per-patch change logs.
- Link to v5: https://lore.kernel.org/all/20250131183242.3653595-1-jishnu.prakash@oss.qualcomm.com/

Changes since v4:
- Split common ADC channel properties out into a separate file to use as 
  ref for ADC5 Gen3 and moved ADC5 Gen3 documentation into a separate
  file as suggested by reviewers.
- Addressed few reviewer comments in driver patches.
- Link to v4: https://lore.kernel.org/all/20241030185854.4015348-1-quic_jprakash@quicinc.com/

Changes since v3:
- Updated files affected by adc file path change in /arch/arm folder,
  which were missed earlier.
- Added ADC5 Gen3 documentation changes in existing qcom,spmi-vadc.yaml file
  instead of adding separate file and addressed reviewer comments for all bindings.
- Addressed review comments in driver patch. Split out TM functionality into
  auxiliary driver in separate patch and added required changes in main driver, as
  suggested by Dmitry.
- Link to v3: https://lore.kernel.org/all/20231231171237.3322376-1-quic_jprakash@quicinc.com/

Changes since v2:
- Reordered patches to keep cleanup change for ADC files first.
- Moved ADC5 Gen3 documentation into a separate file

Changes since v1:
- Dropped patches 1-5 for changing 'ADC7' peripheral name to 'ADC5 Gen2'.
- Addressed reviewer comments for binding and driver patches for ADC5 Gen3.
- Combined patches 8-11 into a single patch as requested by reviewers to make
  the change clearer and made all fixes required in same patch.

Jishnu Prakash (4):
  dt-bindings: iio: adc: Split out QCOM VADC channel properties
  dt-bindings: iio: adc: Add support for QCOM PMIC5 Gen3 ADC
  iio: adc: Add support for QCOM PMIC5 Gen3 ADC
  thermal: qcom: add support for PMIC5 Gen3 ADC thermal monitoring

 .../bindings/iio/adc/qcom,spmi-adc5-gen3.yaml | 151 +++
 .../iio/adc/qcom,spmi-vadc-common.yaml        |  84 ++
 .../bindings/iio/adc/qcom,spmi-vadc.yaml      |  78 +-
 .../bindings/mfd/qcom,spmi-pmic.yaml          |   1 +
 drivers/iio/adc/Kconfig                       |  26 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/qcom-spmi-adc5-gen3.c         | 860 ++++++++++++++++++
 drivers/thermal/qcom/Kconfig                  |   9 +
 drivers/thermal/qcom/Makefile                 |   1 +
 drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c | 515 +++++++++++
 include/linux/iio/adc/qcom-adc5-gen3-common.h | 211 +++++
 11 files changed, 1863 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml
 create mode 100644 drivers/iio/adc/qcom-spmi-adc5-gen3.c
 create mode 100644 drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
 create mode 100644 include/linux/iio/adc/qcom-adc5-gen3-common.h


base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
-- 
2.25.1


