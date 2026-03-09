Return-Path: <devicetree+bounces-272907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UH0EJFG7rmmxIQIAu9opvQ
	(envelope-from <devicetree+bounces-272907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:21:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2711A238B69
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF3D430E158A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:09:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B21B3AE1B5;
	Mon,  9 Mar 2026 12:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XmNDQxhZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N3M89+y1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EEF3ACF11
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058120; cv=none; b=lWfPcEBbPK7QajlkannmQV7jU7u7BRidEfzK5jrJf5Y5wr97GeJLfVWSHRN+MD5N+MJ/OmxEnAkxGEsNvl/VH6HOFik5eecN0yXb/riWQBuDeHpgmOFpvvEPmaqYFUaUcfg+MHO+H1sofqSZaxLmt1mLz5TUQCFBtTGS7Xrsypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058120; c=relaxed/simple;
	bh=s0Gpr12lLOiMsyPdqj+nFCdGy5NxwGSWZglbiqC3uu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c2JnenP3qj9ZHWsZmWr3apo5HkLRwZdx4zB6vdvfQgWklcAGHr0G6rjSvVFo57Ug0IlIEbCgLbu+2esTUJoHjocSCjcKMs2jDjxJQ0LlpNCHkLm+DoyXExG5soXLXuBVmshepMlB2mV34zHnuQeV5w0foJZQ2RGbZWGxEDma3cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XmNDQxhZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N3M89+y1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A0MFi1588538
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:08:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OIycdCMVAHFm2LvzFmzNFCXgiMKffLWzH9oKhlVRQUA=; b=XmNDQxhZ0X1qhYj1
	zpRF47+MmyiyPIQwAlbXzz8VIaHswZlNoKD01NdSSka3eRPRrfN6rVhktnBFAQZq
	SZM3ALQMsaftPqD9U2glqbhiCu2/Wyj5FGgDgV2K5A8WS4zzgD7fGuQ//XCxAe0u
	1bNAOyG4JEl8TiAAIN4o/hrI5k0NpjcfqcIdqTqZKsifRZah4H4cmrjmT3wqQlnn
	joRVIGPEuIfCcq5EKBctyX3cJqiyco2kyiBzFQF4CCDkHo4OQfQe6dDqK5HdP9c4
	Q57SKsa++H3d3/psw33+WkY2khiCq9E+CcUz65TVfnoagPdTSRJzXo1RfeeuYC0D
	pxlD6Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csqcy9e4v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:08:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd827a356aso687630285a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058117; x=1773662917; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OIycdCMVAHFm2LvzFmzNFCXgiMKffLWzH9oKhlVRQUA=;
        b=N3M89+y1xzfRdGUzi10iFqePkpcmqDgyGcceAh+CUKIOg9rXJbLzF7s2Kn4Vf7n0ZQ
         oP3oqx1xTR6upneWl6ekfMvS9gFalqBg8wXGUM64eqbzpvxuqpXNufcrWQI0tXqapGn0
         6erlZsvyAa49cIDWvTwn/FPGE3byK+9YPpy3sUm/PsfruTIzKtuhKBtEzEZvvVxGUqx0
         0ZaapAkEq37eM2P64sHVvXCwYzD0Ep9HX2jcEVEM+QnR2Du5W7jeiE4mxyqQH56XL9Mr
         OtdaYsouzimGiRKJvLvhVNGXlQLbnhoXwwYmmpbxz25TcMNYIavKEc0eQWdFpE8WV81d
         1/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058117; x=1773662917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OIycdCMVAHFm2LvzFmzNFCXgiMKffLWzH9oKhlVRQUA=;
        b=ClGSsN8wke1RYCPA+HAKFgy8kfm8GRVsscLwkgJEMQPC5W+R/h60azXXfIfTWjRdlo
         7ETIlt1tMOsT1i2JDoEiQEDRCxp27lfOfNPyQ8XlRQLYTXwBEEsLpnC2xWS/20G+8SCc
         bJaYQqAspuN5TZGe/9nKxajI4aY33pvq8Ur+mthEL8EnB/jVMtlbBbUm5IxoVqbgIQQI
         tVPidxMfVjjAsxj93hwNyXt+2YVqxVs+uqkjn/IQzQ0Lo3JE6jPX0jwbfJGYyxdoAxOk
         zU3gGGuvFXVQEVHOa4UMKKu+4dQM0qUoAsS6Hi0CRkyHRYuFJp0fE7IN+ZM0M7kUhEdx
         2lPA==
X-Forwarded-Encrypted: i=1; AJvYcCVUDUu4k5CnQH9Fzj1Z2uXtBTyY0SZ/UFdCW06/V7cw+qPzTTW5uAWbWlqXS3lZlRKae7/RNk4qSYd9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+gG2xbXU0O32L2q90O913byyosm9i5V34WI8bE1PvEotoBB0g
	oSgwm7tjbpf6oNW0/5gOd9a1KszFaNYjEFbOgW35Ckql90jUYe9OtPyJO7T3aEuBAKF7Dc9m+9F
	6Wx9SpvPpgSPlnNr6BYpg3RacXoCeu/xG2SNkwxArJHWrJuk25VAEsCeE/wcQlR7l
X-Gm-Gg: ATEYQzwTjos/0ueVe3LJ5QgT76D1WZoIvZ18KH4yZIegaBdGXSB/GFW0pHSvcgIfF5d
	9BzkPh9ZnZK/GHA1nXhHwZy7DqIea2P/F9Qp3zTWBi/LKK2tEr47Gjv7W3nb3gyfkMQuovm8kpE
	ygRwFYJGGSJJS/bi9fgBisEQXEttqHY2oapPvs33vZDxAei+6vr5i5dFNIgR5dXDLhorVMG6FPx
	CG+fQ38Jfcj3lpYgFEynnfsRIxHUzD++Pf7EHw5rbsDOdGXR3trDQlIrtn5M+EIdCoOEsZNXKob
	iJS5ZDYu6yAi/pd+ihHDN8WT2c/r77psxI0szXFLZ95jetpEFBm9Xa6e1Te4zXqnDhMXSGMeqhA
	PGAY0gACjeml56jwzvxfSCdXl78xwZg==
X-Received: by 2002:a05:620a:112b:b0:8cd:7dfc:ce63 with SMTP id af79cd13be357-8cd7dfcd002mr601170785a.47.1773058117097;
        Mon, 09 Mar 2026 05:08:37 -0700 (PDT)
X-Received: by 2002:a05:620a:112b:b0:8cd:7dfc:ce63 with SMTP id af79cd13be357-8cd7dfcd002mr601165285a.47.1773058116517;
        Mon, 09 Mar 2026 05:08:36 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853916624dsm107826075e9.6.2026.03.09.05.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:08:35 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 14:08:16 +0200
Subject: [PATCH v2 1/3] dt-bindings: clock: qcom: glymur-gcc: Add missing
 CX power domain
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-fix-gcc-cx-scaling-v2-1-d7a58a0a9ecb@oss.qualcomm.com>
References: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2009;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=s0Gpr12lLOiMsyPdqj+nFCdGy5NxwGSWZglbiqC3uu4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprrg6+cp9bXUCSPOuwfVxuUZQhhHmxRHZo3ccM
 iTp4Ysd6TuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa64OgAKCRAbX0TJAJUV
 VoDSEACnyD6DWhAni52yGYdvAhELJv62fTzM42Xw/i52qRUbRaFXbjhinkDI5+o7oZ8nrC6MPse
 DpZ6IquO2/FSQYMN51rKhhPmABuWNE/XJRopBnBBOPR6KHUiUX9fWTEbv06s7dspYUFop4JDGh+
 HcLiu0cSXkr1fhqP8bS5d5ptBk4eovOj2AYfMXBjzi5rSnDKRVCVl/aMU2Dl79CxkN9yw5i6nwD
 GYy7ala3rksFIU0p2XfQwcwPcMgnr5zGjWa7EdU/oMIg0L0pB9O9e5SQxijfU4qWX2j5SGBMVbl
 dLiMbG1Z6nPLoMbOJo1eGsXpgxwh0pj4l9tAbl5OqEtRPFLvtIvHpPT7KC/KqES89TZSmr5c17K
 OgLWJRUPNZUF2V6s1LPaTFa7yZ38fGbgysI1dt4Tn0g/E5gJ3rkoXgYO4wrPywCDswFB6Sf6O+9
 kHyjTRT1AuF5R7ZBbbli1pC4LvsuSCaYBn3mpZjr1AY9lFsOByQxpAWX4Bj730HxvwaZw0Hn6ss
 sk+JYQv8B1lzPcnbQ1lvaiUywwCyb90UQfRsqqroRXcMZELSOIjqvq9FV3EXFXBfROsswAunA2w
 mRpt9A9mDFNH79MyTlVpurDErN2OVcpWMKb6dv6Bs8EAhLM65dRLs/RwDBkpbIwzz56UrMBlaUB
 /phihe6f1eVoAQw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMSBTYWx0ZWRfXz+YWaAZZGZB8
 4HKiD9WXz1Q/tSpglcEHwcNoKRE1esnEOqh+Lic+SqBcaw1OSackBjXreSRRDLbedsZDjGm5i7y
 L4wyzg8kkYuIs1aCainU1nsCQzr37z2UkDOPLvzbMP4aCraKrfiMVRRXuLXreUIfEQG15a97VqC
 D/Nsv419Kd+XNwDI3Y+TtgLDSZTZ3uysemw0XKBuxgGZ/5PPqh1c8JI3i0AJSi3j2GBJDTFf/U/
 Yh8JWhkrztrqxdI8lsy4HMfdPBdteEapN8jWPdelhl8tLyGW63JxQsxontzZ40m86bo0vbulNbR
 l+tMgtYp1oG44NFxqX4EiD75sxqYShQFMrlrtmdRFduXkcc0ngK8FZ+S1m5RxATwKoXGNBVFYJQ
 Ou3CU4fMBP/BPo+mO/XUPzf958XIrEG6Z5Genme5hFw8SjiU12pHmU2TmVxO0qhYlxgi5NjJizE
 p+JQ7Ei9RCWNboNwnZA==
X-Authority-Analysis: v=2.4 cv=QJtlhwLL c=1 sm=1 tr=0 ts=69aeb846 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=FB_zh4ukohLvxuHn9zUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: NWUup_LY2rzsfyTdjx-ONSSqih2Xv-BK
X-Proofpoint-GUID: NWUup_LY2rzsfyTdjx-ONSSqih2Xv-BK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090111
X-Rspamd-Queue-Id: 2711A238B69
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-272907-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.1.134.160:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.943];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

It has been concluded off-list that the Global Clock Controller needs to
scale the RPMh CX power domain, otherwise some of the subsystems might
crash or be unstable. So adding the RPMh CX power domain to the clock
controller which will result in all GDSCs being parented by CX. This way,
the vote from the consumers of each GDSC will trickle all the way to CX.

So document the power domain.

Fixes: ee2d967030fe ("dt-bindings: clock: qcom: document the Glymur Global Clock Controller")
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
index b05b0e6c4483..7a4054c9f215 100644
--- a/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,glymur-gcc.yaml
@@ -65,9 +65,15 @@ properties:
       - description: USB4 PHY 2 pcie pipe clock source
       - description: USB4 PHY 2 Max pipe clock source
 
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the CX power domain.
+    maxItems: 1
+
 required:
   - compatible
   - clocks
+  - power-domains
   - '#power-domain-cells'
 
 allOf:
@@ -78,6 +84,7 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
     clock-controller@100000 {
       compatible = "qcom,glymur-gcc";
       reg = <0x100000 0x1f9000>;
@@ -113,6 +120,7 @@ examples:
                <&usb4_phy_0_pcie_pipe>, <&usb4_phy_0_max_pipe>,
                <&usb4_phy_1_pcie_pipe>, <&usb4_phy_1_max_pipe>,
                <&usb4_phy_2_pcie_pipe>, <&usb4_phy_2_max_pipe>;
+      power-domains = <&rpmhpd RPMHPD_CX>;
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;

-- 
2.48.1


